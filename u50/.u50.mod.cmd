savedcmd_u50.mod := printf '%s\n'   U50Link.o U50Osal.o U50Log.o U50Driver.o packet_util.o ipv6_ls_to_udp.o ip_util.o | awk '!x[$$0]++ { print("./"$$0) }' > u50.mod
