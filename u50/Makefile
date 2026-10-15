ccflags-y += -I$(src)/include -DU50_KERNEL -DU50_LAYER5 -g

obj-m += u50.o

u50-y += U50Link.o
u50-y += U50Osal.o
u50-y += U50Log.o
u50-y += U50Driver.o
u50-y += packet_util.o
u50-y += ipv6_ls_to_udp.o
u50-y += ip_util.o

clean:
	sudo rm -rf .??*.cmd .tmp_versions *.ko *.o Module.symvers modules.order
  
