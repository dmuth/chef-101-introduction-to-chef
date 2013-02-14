Chef IPv6 Recipes
=================

These are the recipes that I use to set up IPv6 on my Linode box 
running Ubuntu 12.04 LTS.


Configuration
-------------

- Edit the file recipes/interfaces.rb and list your netblock. 
	Optionally change the size of the netblock (Linode 
	usually give out /64s...)
- Edit the file templates/default/interfaes.erb and give yourself 
	less or mre IPv6 addresses if you want.

To install the network configuraiton, use this command

`sudo chef-solo -c ./config.rb --color -o ipv6::interfaces --why-run`

Remove the `--why-run` parameter to actually run the recipes. :-)

Note that you'll have to bring the network interface down and back up 
for the changes to take effect. I *strongly* recommend you do this from the
console in case something goes wrong.

Further Info
------------

For further info on setting up IPv6, I wrote a blog post about it:

http://www.dmuth.org/node/1407/setting-ipv6-linode-nginx


