IOC_TOP = /reg/g/pcds/epics/ioc/common/ads-ioc/R0.3.1
IOC_INSTANCE_PATH := $(shell pwd)

# Set PRODUCTION_IOC to 1 to move from a testing to a production IOC:
PRODUCTION_IOC := 1

PROJECT_NAME := plc-kfe-rix-vac
PROJECT_PATH := ../../plc-kfe-rix-vac/plc-kfe-rix-vac.tsproj
PLC := plc_kfe_rix_vac

PYTMC_OPTS := 
PREFIX := PLC:KFE:RIX:VAC

# With two $$, as in $$(IOCNAME) below, this will be expanded in the
# environment of st.cmd:
#DB_PARAMETERS := 'PREFIX=$(PREFIX):,IOCNAME=$$(IOCNAME)'
DB_PARAMETERS := 'PREFIX=$(PREFIX):,IOCNAME=$$(IOC),IOC=$$(IOC)'

include $(IOC_TOP)/iocBoot/templates/Makefile.base
