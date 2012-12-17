
#
# Configuration for chef-solo
#
base_dir Dir.pwd + "/"
puts "Starting with base directory: " + base_dir

file_cache_path base_dir + "cache/"
#puts file_cache_path # Debugging

cookbook_path base_dir + "cookbooks/"
#puts cookbook_path # Debugging

