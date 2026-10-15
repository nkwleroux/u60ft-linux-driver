savedcmd_u50.ko := ld -r -m elf_x86_64 -z noexecstack --no-warn-rwx-segments --build-id=sha1  -T /usr/src/kernels/7.1.12-100.fc43.x86_64/scripts/module.lds -o u50.ko u50.o u50.mod.o .module-common.o
