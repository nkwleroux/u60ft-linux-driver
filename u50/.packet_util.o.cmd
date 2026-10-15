savedcmd_packet_util.o := gcc -Wp,-MMD,./.packet_util.o.d -nostdinc -I/usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include -I/usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/generated -I/usr/src/kernels/7.1.12-100.fc43.x86_64/include -I/usr/src/kernels/7.1.12-100.fc43.x86_64/include -I/usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/uapi -I/usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/generated/uapi -I/usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi -I/usr/src/kernels/7.1.12-100.fc43.x86_64/include/generated/uapi -include /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/compiler-version.h -include /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/kconfig.h -include /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/compiler_types.h -D__KERNEL__ -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -std=gnu11 -fms-extensions -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -mno-sse4a -fcf-protection=branch -fno-jump-tables -m64 -falign-jumps=1 -falign-loops=1 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup -march=x86-64 -mtune=generic -mno-red-zone -mcmodel=kernel -mstack-protector-guard-reg=gs -mstack-protector-guard-symbol=__ref_stack_chk_guard -Wno-sign-compare -fno-asynchronous-unwind-tables -mindirect-branch=thunk-extern -mindirect-branch-register -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fno-jump-tables -mharden-sls=all -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O2 -fno-allow-store-data-races -fstack-protector-strong -ftrivial-auto-var-init=zero -fzero-init-padding-bits=all -fno-stack-clash-protection -pg -mrecord-mcount -mfentry -DCC_USING_FENTRY -fno-inline-functions-called-once -fmin-function-alignment=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -fconserve-stack -fno-builtin-wcslen -Wall -Wextra -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wmissing-declarations -Wmissing-prototypes -Wframe-larger-than=2048 -Wno-main -Wno-type-limits -Wno-dangling-pointer -Wvla-larger-than=1 -Wno-pointer-sign -Wcast-function-type -Wno-unterminated-string-initialization -Wno-array-bounds -Wno-stringop-overflow -Wno-alloc-size-larger-than -Wimplicit-fallthrough=5 -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wenum-conversion -Wunused -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-packed-not-aligned -Wno-format-overflow -Wno-format-truncation -Wno-stringop-truncation -Wno-override-init -Wno-missing-field-initializers -Wno-shift-negative-value -Wno-maybe-uninitialized -Wno-sign-compare -Wno-unused-parameter -g -I././include -DU50_KERNEL -DU50_LAYER5 -g  -fsanitize=bounds-strict -fsanitize=shift    -DMODULE  -DKBUILD_BASENAME='"packet_util"' -DKBUILD_MODNAME='"u50"' -D__KBUILD_MODNAME=u50 -c -o packet_util.o packet_util.c  

source_packet_util.o := packet_util.c

deps_packet_util.o := \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/compiler_types.h \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/PAHOLE_HAS_BTF_TAG) \
    $(wildcard include/config/FUNCTION_ALIGNMENT) \
    $(wildcard include/config/CC_HAS_SANE_FUNCTION_ALIGNMENT) \
    $(wildcard include/config/X86_64) \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/LD_DEAD_CODE_DATA_ELIMINATION) \
    $(wildcard include/config/LTO_CLANG) \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/KCSAN) \
    $(wildcard include/config/CC_HAS_ASSUME) \
    $(wildcard include/config/CC_HAS_COUNTED_BY) \
    $(wildcard include/config/FORTIFY_SOURCE) \
    $(wildcard include/config/UBSAN_BOUNDS) \
    $(wildcard include/config/CC_HAS_COUNTED_BY_PTR) \
    $(wildcard include/config/CC_HAS_MULTIDIMENSIONAL_NONSTRING) \
    $(wildcard include/config/CFI) \
    $(wildcard include/config/ARCH_USES_CFI_GENERIC_LLVM_PASS) \
    $(wildcard include/config/CC_HAS_BROKEN_COUNTED_BY_REF) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/compiler-context-analysis.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/compiler_attributes.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/compiler-gcc.h \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
    $(wildcard include/config/SHADOW_CALL_STACK) \
    $(wildcard include/config/KCOV) \
    $(wildcard include/config/CC_HAS_TYPEOF_UNQUAL) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/string.h \
    $(wildcard include/config/BINARY_PRINTF) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/args.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/array_size.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/compiler.h \
    $(wildcard include/config/TRACE_BRANCH_PROFILING) \
    $(wildcard include/config/PROFILE_ALL_BRANCHES) \
    $(wildcard include/config/OBJTOOL) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/generated/asm/rwonce.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/asm-generic/rwonce.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/kasan-checks.h \
    $(wildcard include/config/KASAN_GENERIC) \
    $(wildcard include/config/KASAN_SW_TAGS) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi/linux/types.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/generated/uapi/asm/types.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi/asm-generic/types.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/asm-generic/int-ll64.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi/asm-generic/int-ll64.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/uapi/asm/bitsperlong.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/asm-generic/bitsperlong.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi/asm-generic/bitsperlong.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi/linux/posix_types.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/stddef.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi/linux/stddef.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/X86_32) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/uapi/asm/posix_types_64.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi/asm-generic/posix_types.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/kcsan-checks.h \
    $(wildcard include/config/KCSAN_WEAK_MEMORY) \
    $(wildcard include/config/KCSAN_IGNORE_ATOMICS) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/cleanup.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/err.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/generated/uapi/asm/errno.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi/asm-generic/errno.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi/asm-generic/errno-base.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/errno.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi/linux/errno.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/overflow.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/limits.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi/linux/limits.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/vdso/limits.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/const.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/vdso/const.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi/linux/const.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/stdarg.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi/linux/string.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/asm/string.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/asm/string_64.h \
    $(wildcard include/config/KMSAN) \
    $(wildcard include/config/ARCH_HAS_UACCESS_FLUSHCACHE) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/jump_label.h \
    $(wildcard include/config/JUMP_LABEL) \
    $(wildcard include/config/HAVE_ARCH_JUMP_LABEL_RELATIVE) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/asm/jump_label.h \
    $(wildcard include/config/HAVE_JUMP_LABEL_HACK) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/asm/asm.h \
    $(wildcard include/config/KPROBES) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/annotate.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/objtool_types.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/stringify.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/asm/asm-offsets.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/generated/asm-offsets.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/asm/extable_fixup_types.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/asm/nops.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/fortify-string.h \
    $(wildcard include/config/CC_HAS_KASAN_MEMINTRINSIC_PREFIX) \
    $(wildcard include/config/GENERIC_ENTRY) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/bug.h \
    $(wildcard include/config/GENERIC_BUG) \
    $(wildcard include/config/PRINTK) \
    $(wildcard include/config/BUG_ON_DATA_CORRUPTION) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/asm/bug.h \
    $(wildcard include/config/DEBUG_BUGVERBOSE) \
    $(wildcard include/config/DEBUG_BUGVERBOSE_DETAILED) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/instrumentation.h \
    $(wildcard include/config/NOINSTR_VALIDATION) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/objtool.h \
    $(wildcard include/config/FRAME_POINTER) \
    $(wildcard include/config/MITIGATION_UNRET_ENTRY) \
    $(wildcard include/config/MITIGATION_SRSO) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/static_call_types.h \
    $(wildcard include/config/HAVE_STATIC_CALL) \
    $(wildcard include/config/HAVE_STATIC_CALL_INLINE) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/asm-generic/bug.h \
    $(wildcard include/config/BUG) \
    $(wildcard include/config/GENERIC_BUG_RELATIVE_POINTERS) \
    $(wildcard include/config/SMP) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/once_lite.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/panic.h \
    $(wildcard include/config/PANIC_TIMEOUT) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/printk.h \
    $(wildcard include/config/MESSAGE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_QUIET) \
    $(wildcard include/config/EARLY_PRINTK) \
    $(wildcard include/config/PRINTK_INDEX) \
    $(wildcard include/config/DYNAMIC_DEBUG) \
    $(wildcard include/config/DYNAMIC_DEBUG_CORE) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/init.h \
    $(wildcard include/config/MEMORY_HOTPLUG) \
    $(wildcard include/config/HAVE_ARCH_PREL32_RELOCATIONS) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/build_bug.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/kern_levels.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/linkage.h \
    $(wildcard include/config/ARCH_USE_SYM_ANNOTATIONS) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/export.h \
    $(wildcard include/config/MODVERSIONS) \
    $(wildcard include/config/GENDWARFKSYMS) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/CALL_PADDING) \
    $(wildcard include/config/MITIGATION_RETHUNK) \
    $(wildcard include/config/MITIGATION_RETPOLINE) \
    $(wildcard include/config/MITIGATION_SLS) \
    $(wildcard include/config/FUNCTION_PADDING_BYTES) \
    $(wildcard include/config/UML) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/asm/ibt.h \
    $(wildcard include/config/X86_KERNEL_IBT) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/ratelimit_types.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/bits.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/vdso/bits.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi/linux/bits.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi/linux/param.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/generated/uapi/asm/param.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/asm-generic/param.h \
    $(wildcard include/config/HZ) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi/asm-generic/param.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/spinlock_types_raw.h \
    $(wildcard include/config/DEBUG_SPINLOCK) \
    $(wildcard include/config/DEBUG_LOCK_ALLOC) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/asm/spinlock_types.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/asm-generic/qspinlock_types.h \
    $(wildcard include/config/NR_CPUS) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/asm-generic/qrwlock_types.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/uapi/asm/byteorder.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/byteorder/little_endian.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi/linux/byteorder/little_endian.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/swab.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/uapi/linux/swab.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/arch/x86/include/uapi/asm/swab.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/byteorder/generic.h \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/lockdep_types.h \
    $(wildcard include/config/PROVE_RAW_LOCK_NESTING) \
    $(wildcard include/config/LOCKDEP) \
    $(wildcard include/config/LOCK_STAT) \
  /usr/src/kernels/7.1.12-100.fc43.x86_64/include/linux/dynamic_debug.h \
  LtPacket.h \
  packet_util.h \

packet_util.o: $(deps_packet_util.o)

$(deps_packet_util.o):
