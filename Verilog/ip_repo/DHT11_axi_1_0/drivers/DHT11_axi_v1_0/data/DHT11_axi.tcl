

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "DHT11_axi" "NUM_INSTANCES" "DEVICE_ID"  "C_S00_DHT11_AXI_BASEADDR" "C_S00_DHT11_AXI_HIGHADDR"
}
