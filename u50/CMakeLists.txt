execute_process(
        COMMAND uname -r
        OUTPUT_VARIABLE KERNEL_RELEASE
        OUTPUT_STRIP_TRAILING_WHITESPACE
)

set(KERNEL_DIR "/usr/src/kernels/${KERNEL_RELEASE}")

include_directories(
        ${KERNEL_DIR}/include
        ${KERNEL_DIR}/include/uapi
        ${KERNEL_DIR}/include/generated
        ${KERNEL_DIR}/include/generated/uapi
        ${CMAKE_SOURCE_DIR}/u50/include

        ${KERNEL_DIR}/arch/x86/include
        ${KERNEL_DIR}/arch/x86/include/uapi
        ${KERNEL_DIR}/arch/x86/include/generated
        ${KERNEL_DIR}/arch/x86/include/generated/uapi
)