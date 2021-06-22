#! /bin/bash

################# FEE ################
echo ""
echo "FEE:"

# GCC
echo ""
echo "GCC:"
caput PC1K1:ZOS:GCC:1:HV_SW "ON"
caput MR1K2:SWITCH:GCC:1:HV_SW "ON"
caput TV1K1:PLEG:GCC:1:HV_SW "ON"


# PIP
echo ""
echo "PIP:"
caput PC1K1:ZOS:PIP:1:HV_SW "ON"
caput MR1K2:SWITCH:PIP:1:HV_SW "ON"
caput TV1K1:PLEG:PIP:1:HV_SW "ON"


################# TMO ################
echo ""
echo "TMO:"

# GCC
echo ""
echo "GCC:"
caput SL1K2:EXIT:GCC:1:HV_SW "ON"


# PIP
echo ""
echo "PIP:"
caput SL1K2:EXIT:PIP:1:HV_SW "ON"


################# RIX ################
echo ""
echo "RIX:"

# GCC
echo ""
echo "GCC:"
caput ST1K2:PPS:GCC:1:HV_SW "ON"
caput MR2K2:FLAT:GCC:1:HV_SW "ON"
caput IM2K2:PPM:GCC:1:HV_SW "ON"
caput MR3K2:KBH:GCC:1:HV_SW "ON"
caput IM3K2:PPM:GCC:1:HV_SW "ON"
caput MR4K2:KBV:GCC:1:HV_SW "ON"
caput TV4K2:GFS:1:HV_SW "ON"
caput IM5K2:PPM:GCC:1:HV_SW "ON"
caput TM2K2:K2B:GCC:1:HV_SW "ON"
# caput IM6K2:PPM:GCC:1:HV_SW "ON"

# PIP
echo ""
echo "PIP:"
caput ST1K2:PPS:PIP:1:HV_SW "ON"
caput MR2K2:FLAT:PIP:1:HV_SW "ON"
caput IM2K2:PPM:PIP:1:HV_SW "ON"
caput MR3K2:KBH:PIP:1:HV_SW "ON"
caput IM3K2:PPM:PIP:1:HV_SW "ON"
caput MR4K2:KBV:PIP:1:HV_SW "ON"
caput IM4K2:PPM:PIP:1:HV_SW "ON"
caput TV4K2:PIP:1:HV_SW "ON"
caput LI2K2:K2A:PIP:1:HV_SW "ON"
caput IM5K2:PPM:PIP:1:HV_SW "ON"
caput PA1K2:PIP:1:HV_SW "ON"
# caput ST3K2:TERM:PIP:1:HV_SW "ON"


################# VFS ################
echo ""
echo "VFS:"


# Not sure if the sleeps are necessary. Test at a later date
sleep 1
caput TV1K2:VFS:1:ALM_RST TRUE
sleep 1
caput TV1K2:VFS:1:ALM_RST FALSE
sleep 1
caput TV1K2:VFS:1:OPN_SW "OPEN"
