savedcmd_u50.o := ld -m elf_x86_64 -z noexecstack --no-warn-rwx-segments   -r -o u50.o @u50.mod  ; /usr/src/kernels/7.1.12-100.fc43.x86_64/tools/objtool/objtool --hacks=jump_label --hacks=noinstr --hacks=skylake --ibt --orc --retpoline --rethunk --sls --static-call --uaccess --prefix=16  --link  --module u50.o

u50.o: $(wildcard /usr/src/kernels/7.1.12-100.fc43.x86_64/tools/objtool/objtool)
