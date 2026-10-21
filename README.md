# lon-driver
This is a fork of the original izot/lon-driver repo. Updated support for U60FT. Tested on Fedora and Raspberry pi 5.

The EnOcean LON driver enables developers to add support to Linux for the EnOcean U60 USB LON network interface. The LON protocol is an open standard defined by the ISO/IEC 14908 series of standards.

This repository includes the following directories:

- lonifd -- LON Interface Daemon: creates a Linux LON network interface when a compatible LON USB network interface is discovered.

- u50 -- Serial USB LON Driver: implements a LON driver for a LON USB network interface that incorporate a serial USB interface.  Compatible with the EnOcean U60 FT USB Network Interface.

## Repo structure

u60ft-linux-driver/
├── u50/
│   ├── Makefile
│   ├── U50Driver.c
│   ├── U50Link.c
│   ├── U50Osal.c
│   └── ...
├── lonifd/
│   ├── Makefile
│   └── lonifd.c
└── README.md

## Build dependencies 

### Raspberry pi 5
sudo apt update
sudo apt install -y \
    git \
    build-essential \
    pkg-config \
    libsystemd-dev \
    libelf-dev \
    iproute2 \
    usbutils \
    kmod \
    util-linux \
    procps \
    strace
sudo apt install -y linux-headers-rpi-2712

### Ubuntu
sudo apt update
sudo apt install -y \
    git \
    build-essential \
    linux-headers-$(uname -r) \
    pkg-config \
    libsystemd-dev \
    libelf-dev \
    iproute2 \
    usbutils \
    kmod \
    util-linux \
    procps \
    strace

### Fedora
sudo dnf install -y \
    git \
    gcc \
    make \
    kernel-devel-$(uname -r) \
    kernel-headers \
    elfutils-libelf-devel \
    systemd-devel \
    pkgconf-pkg-config \
    iproute \
    usbutils \
    kmod \
    util-linux \
    procps-ng \
    strace

## How to run

### Terminal 1
```bash
sudo pkill -x lonifd 2>/dev/null || true

cd ~/Documents/u60ft-linux-driver/u50

make -C /lib/modules/$(uname -r)/build M="$PWD" clean
make -C /lib/modules/$(uname -r)/build M="$PWD" modules

sudo rmmod u50
sudo insmod ./u50.ko
```

#### Useful diagnostic tools
Verify the driver file:
```bash
ls -lh u50.ko
```
Module info:
```bash
modinfo ./u50.ko
```

You might see (if running in a VM):
-> Skipping BTF generation for u50.ko due to unavailability of vmlinux
This is normally harmless. It means optional BTF debugging metadata was not generated.

### Terminal 2
```bash
cd ~/Documents/u60ft-linux-driver/lonifd

make clean
make

sudo ./lonifd -d /dev/ttyACM0 -l 29
```

#### Useful diagnostic tools
Verify executable:
```bash
ls -lh lonifd
```



## Testing
### Connect and detect the U60 FT
Connect the EnOcean U60 FT to the computer.
Check that Linux detects the USB device:
```bash 
lsusb
```

The expected USB vendor and product identifiers are, though they might differ:
0920:5550

You can filter specifically for it:
```bash
lsusb -d 0920:5550
```

Check the kernel messages:
```bash
sudo dmesg | grep -Ei 'U60|Echelon|ttyACM|cdc_acm' | tail -n 30
```

Expected output resembles:
```bash
usb 1-2: New USB device found, idVendor=0920, idProduct=5550
usb 1-2: Product: Echelon U60 FT Network Interface
usb 1-2: Manufacturer: Echelon
cdc_acm 1-2:1.0: ttyACM0: USB ACM device
```

Verify the TTY device:
```bash
ls -l /dev/ttyACM*
```

Expected:
```bash
/dev/ttyACM0
```

If the device is not detected, load the standard CDC ACM driver:
```bash
sudo modprobe cdc_acm
```

Then reconnect the U60.

### Testing if the u50 module is loaded
Verify it is loaded:
```bash
lsmod | grep u50
```

Then verify the line discipline:
```bash
cat /proc/tty/ldiscs | grep u50
```

Expected:
```bash
u50        29
```

### Check lon interface
Check interface creation
```bash
ip -br link | grep lon
```

Expected:
```bash
lon0    UNKNOWN    <BROADCAST,UP,LOWER_UP>
```

### Testing communication
While the main lonifd remains running in Terminal 2, execute the following in Terminal 3:
```bash
cd ~/Documents/u60ft-linux-driver/lonifd

# Read the Neuron ID through the Linux network interface:
sudo timeout 5s ./lonifd -n lon0
```

Expected (mac address such as):
```bash
00:d0:71:24:50:1e
```

### Check mapping
```bash
sudo cat /var/apollo/data/router/nid_index
```

The mapping should resemble:
```bash
0 00:d0:71:24:50:1e TP/FT-10 /dev/ttyACM0
```


## Troubleshooting
## Troubleshooting

| Problem | Possible Cause | Solution |
|---|---|---|
| Kernel headers not found | Missing or mismatched kernel development files | Verify `uname -r` and install matching kernel headers. Check `/lib/modules/$(uname -r)/build`. |
| `u50.ko` fails to compile | Missing dependencies or kernel API incompatibility | Check compiler errors and ensure GCC, Make, and matching kernel development files are installed. |
| `insmod: Key was rejected by service` | Secure Boot rejects the unsigned kernel module | Check Secure Boot status and sign the module if required. |
| `/dev/ttyACM0` missing | U60 FT not detected or `cdc_acm` not loaded | Run `lsusb` and `sudo dmesg \| tail -n 30`. Load `cdc_acm` using `sudo modprobe cdc_acm`. |
| Line discipline 29 missing | `u50.ko` not loaded or registration failed | Run `lsmod \| grep u50` and `cat /proc/tty/ldiscs`. |
| `TIOCSETD: Invalid argument` | Line discipline 29 unavailable or its initialization failed | Verify the registered line discipline and inspect kernel logs with `sudo dmesg`. |
| `CpResync/CpNull failed: Connection timed out` | U60 not responding, incorrect serial configuration, or device already in use | Verify 115200 baud, 8N1, check `sudo fuser -v /dev/ttyACM0`, and reconnect the U60 if necessary. |
| Serial configuration verification failed | Incorrect baud rate, parity, or stop-bit configuration | Verify `cfsetispeed()`, `cfsetospeed()`, and the applied `termios` settings. |
| `lon10` exists but never becomes `lon0` | U50 initialization or Neuron ID discovery failed | Check kernel logs for `Link Start, failed to acquire embedded MAC` and verify the preflight handshake. |
| `lon0` disappears after stopping `lonifd` | Closing the TTY releases the line discipline and removes the network interface | Keep the main `lonifd` process running. |
| `lonifd -n lon0` times out | Interface unavailable or U50 request/response communication failing | Verify `lon0` exists, the main daemon is running, and the U50 driver initialized successfully. |
| `ioctl: No such device` | Requested LON interface does not exist | Run `ip -br link \| grep lon` and use the correct interface name. |
| `write: No such device or address` | AF_PACKET socket cannot transmit through the requested interface | Verify that the interface exists and is UP. |
| `failed to set up serial interface!` | Serial configuration, preflight, or line-discipline attachment failed | Check terminal error messages and `sudo journalctl -t echlonifd -n 50`. |
| `lon_device_count = 1` | An existing LON interface has an IPv4 address | Check `ip -br addr \| grep lon` and ensure another main `lonifd` instance is not running. |
| Multiple `lonifd` instances interfere | Multiple processes accessing `/dev/ttyACM0` | Run `pgrep -a lonifd` and `sudo fuser -v /dev/ttyACM0`. Stop duplicate instances. |
| `strace: exec: Permission denied` | Executable permissions missing or filesystem mounted with `noexec` | Check `ls -l ./lonifd`, `file ./lonifd`, and `findmnt -no OPTIONS -T .`. |
| `Skipping BTF generation for u50.ko` | Optional BTF metadata unavailable because `vmlinux` is missing | No action required if the module compiled successfully. |
| `u50: module verification failed` | Unsigned out-of-tree kernel module | Normally harmless if the module loads successfully; check Secure Boot if loading fails. |
| U60 works only after Python initialization | Serial settings or resynchronization not completed by `lonifd` | Verify that `u50_preflight_resync()` sends `CpResync` and receives `CpNull` before attaching line discipline 29. |
| AF_PACKET test fails | U50 interface not fully initialized or incorrect protocol/interface selected | Verify `lon0` is UP and use protocol `0x8950`. Test with `sudo ./lonifd -n lon0`. |
