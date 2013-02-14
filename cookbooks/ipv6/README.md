
Chef IPv6 Recipes
=================

These are the recipes that I use to set up IPv6 on my Linode box running Ubuntu 12.04 LTS.

To try it out, use this command

`sudo chef-solo -c ./config.rb --color -o ipv6::interfaces --why-run`

Remove the `--why-run` parameter to actually run the recipes. :-)

Note that you'll have to bring the network interface down and back up 
for the changes to take effect. I *strongly* recommend you do this from the
console in case something goes wrong.



