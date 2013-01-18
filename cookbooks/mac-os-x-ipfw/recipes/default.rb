#
# Set up ipfw
#

template "/Library/LaunchDaemons/org.dmuth.ipfw.plist" do
	source "ipfw.plist.erb"
	user #{user}
	mode 0644
end

template "/etc/ipfw.conf" do
	source "etc-ipfw.conf.erb"
end

#
# Mark the service as active.
#
execute "ipfw" do
	command "launchctl load -w /Library/LaunchDaemons/org.dmuth.ipfw.plist"
end

#
# And load our rules manually, since I can't seem to easily 
# do a "restart" in launchctl...
#
execute "ipfw /etc/ipfw.conf" do
	command "ipfw /etc/ipfw.conf"
end


