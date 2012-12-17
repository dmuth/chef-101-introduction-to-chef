

#
# Create a user.
# manage_home is set to true so that his home directory will be created.
#
user "hello" do
	comment "Hello User"
	home "/home/hello"
	shell "/bin/bash"
	supports  :manage_home => true
end

#
# When executing a script, it should create a file specified by 
# "creates" upon completion. This ensures that the command will 
# only run once throughout the life of the system.
#
execute "a sample command" do
	command "touch /home/hello/sample.txt"
	creates "/home/hello/sample.txt"
end

#
# Create a directory with specified ownership and permissions.
#
directory "/home/hello/hello-app" do
	owner "hello"
	group "hello"
	mode 0755
	#
	# This weird syntax looks scary, but it's quite harmless. :-)
	# In Ruby, if you have a string preceeded by a colon, it is 
	# similar to having a string with single quotes around it.  
	# There is a slight additional difference, but that is beyond 
	# the scope of this blog post about Chef.
	#
	action :create
end


#
# Create a configuration file based on a template.
# This will ONLY run if the date of the template file is newer than the date 
# of the deployed file. Chef is fairly efficient about things like that.  
# It never does more work than is necessary.
#
template "/home/hello/hello-app/config.json" do
	source "config.json.erb"
	variables(
		:home_dir => "/home/hello/hello-app"
	)
	user "hello"
	group "hello"
	mode 0600
end


#
# Install the "toilet" package. Because every system needs a toilet.
#
package "toilet" do
	action :install
end



