# GENERIC_H753VITX
# -----------------------------------------------------------------------------

set(GENERIC_H753VITX_VARIANT_PATH "${CMAKE_CURRENT_LIST_DIR}/../variants/SATLL_OBC
set(GENERIC_H753VITX_MAXSIZE 2097152)
set(GENERIC_H753VITX_MAXDATASIZE 524288)
set(GENERIC_H753VITX_MCU cortex-m7)
set(GENERIC_H753VITX_FPCONF "-")
add_library(GENERIC_H753VITX INTERFACE)
target_compile_options(GENERIC_H753VITX INTERFACE
  "SHELL:-DCORE_CM7 -DSTM32H753xx  "
  "SHELL:"
  "SHELL:"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H753VITX_MCU}
)
target_compile_definitions(GENERIC_H753VITX INTERFACE
  "STM32H7xx"
	"ARDUINO_GENERIC_H753VITX"
	"BOARD_NAME=\"GENERIC_H753VITX\""
	"BOARD_ID=GENERIC_H753VITX"
	"VARIANT_H=\"variant_generic.h\""
)
target_include_directories(GENERIC_H753VITX INTERFACE
  ${CMAKE_CURRENT_LIST_DIR}/../system/STM32H7xx
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Inc
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/STM32H7xx_HAL_Driver/Src
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Include/
  ${CMAKE_CURRENT_LIST_DIR}/../system/Drivers/CMSIS/Device/ST/STM32H7xx/Source/Templates/gcc/
  ${GENERIC_H753VITX_VARIANT_PATH}
)

target_link_options(GENERIC_H753VITX INTERFACE
  "LINKER:--default-script=${GENERIC_H753VITX_VARIANT_PATH}/ldscript.ld"
  "LINKER:--defsym=LD_FLASH_OFFSET=0x0"
	"LINKER:--defsym=LD_MAX_SIZE=2097152"
	"LINKER:--defsym=LD_MAX_DATA_SIZE=524288"
  "SHELL:-mfpu=fpv4-sp-d16 -mfloat-abi=hard"
  -mcpu=${GENERIC_H753VITX_MCU}
)

add_library(GENERIC_H753VITX_serial_disabled INTERFACE)
target_compile_options(GENERIC_H753VITX_serial_disabled INTERFACE
  "SHELL:"
)
add_library(GENERIC_H753VITX_serial_generic INTERFACE)
target_compile_options(GENERIC_H753VITX_serial_generic INTERFACE
  "SHELL:-DHAL_UART_MODULE_ENABLED"
)
add_library(GENERIC_H753VITX_serial_none INTERFACE)
target_compile_options(GENERIC_H753VITX_serial_none INTERFACE
  "SHELL:-DHAL_UART_MODULE_ENABLED -DHWSERIAL_NONE"
)
add_library(GENERIC_H753VITX_usb_CDC INTERFACE)
target_compile_options(GENERIC_H753VITX_usb_CDC INTERFACE
  "SHELL:-DUSBCON  -DUSBD_VID=0x0483 -DUSBD_PID=0x5740 -DHAL_PCD_MODULE_ENABLED -DUSBD_USE_CDC -DDISABLE_GENERIC_SERIALUSB"
)
add_library(GENERIC_H753VITX_usb_CDCgen INTERFACE)
target_compile_options(GENERIC_H753VITX_usb_CDCgen INTERFACE
  "SHELL:-DUSBCON  -DUSBD_VID=0x0483 -DUSBD_PID=0x5740 -DHAL_PCD_MODULE_ENABLED -DUSBD_USE_CDC"
)
add_library(GENERIC_H753VITX_usb_HID INTERFACE)
target_compile_options(GENERIC_H753VITX_usb_HID INTERFACE
  "SHELL:-DUSBCON  -DUSBD_VID=0x0483 -DUSBD_PID=0x5740 -DHAL_PCD_MODULE_ENABLED -DUSBD_USE_HID_COMPOSITE"
)
add_library(GENERIC_H753VITX_usb_none INTERFACE)
target_compile_options(GENERIC_H753VITX_usb_none INTERFACE
  "SHELL:"
)
add_library(GENERIC_H753VITX_xusb_FS INTERFACE)
target_compile_options(GENERIC_H753VITX_xusb_FS INTERFACE
  "SHELL:"
)
add_library(GENERIC_H753VITX_xusb_HS INTERFACE)
target_compile_options(GENERIC_H753VITX_xusb_HS INTERFACE
  "SHELL:-DUSE_USB_HS"
)
add_library(GENERIC_H753VITX_xusb_HSFS INTERFACE)
target_compile_options(GENERIC_H753VITX_xusb_HSFS INTERFACE
  "SHELL:-DUSE_USB_HS -DUSE_USB_HS_IN_FS"
)