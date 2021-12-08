#################################################################
# Script to configure to configure Azure Host Hyper-V interface #
# Author: Chris Langford                                        #
# Version: 1.0.0                                                # 
#################################################################

# This script provides internet access to nested VMs in Azure by giving an IP address to a vSwitch
# the config is applied to the Azure host and the guest is given  a static IP in the revelant range

# Create an internal virtual switch
New-VMSwitch -SwitchName "Int-vSwitch" -SwitchType Internal

# Set an IPv4 address to the internal vSwtich to be used as a default gateway
New-NetIPAddress -InterfaceAlias "vEthernet (Int-vSwitch)" -IPAddress 172.16.20.254 -PrefixLength 24

# Crete a NAT rule for an entire subnet
New-NetNat -Name Nat_VM -InternalIPInterfaceAddressPrefix 172.16.20.0/24