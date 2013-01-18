Chef 101: An Introduction to Chef
=================================

Sample Chef cookbook and recipe that I created for a blog post on Chef:

http://www.dmuth.org/node/1397/chef-101-introduction-chef

To execute Chef:

`sudo chef-solo -c ./config.rb -j ./attributes.json`

To run a speicific recipe

`sudo chef-solo -c ./config.rb -o mac-os-x-ipfw`
