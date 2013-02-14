

#
# Install our interfaces file.
#
template "/etc/network/interfaces" do
	variables(
		#
		# Our network
		#
		:network => "2600:3c02:YOUR NETWORK GOES HEREe::",
		#
		# The length of our network.  Usually 64.
		#
		:network_len => "64"
		)
	source "interfaces.erb"
end


