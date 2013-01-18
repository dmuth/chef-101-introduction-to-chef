
This cookbook sets up ports 80 and 443 on your OS/X Mac to forward to ports 8080 and 8433 respectively.

Why would you want to do this? I explain more in my blog post: 

> http://www.dmuth.org/node/1404/web-development-port-80-and-443-vagrant


To install these recipes from the main directory:

`sudo chef-solo -c ./config.rb -o mac-os-x-ipfw`

