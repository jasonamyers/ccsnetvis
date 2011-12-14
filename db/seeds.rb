# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
IpAddress.delete_all
# . . .
IpAddress.create(address: '192.168.16.1',name: 'sdcsw01.ccstenn.com', purpose: 'Core Switch Stack at SDC')
IpAddress.create(address: '192.168.4.200',name: 'pdcsw01.ccstenn.com', purpose: 'Core Switch Stack at PDC')
# . . . 
Site.delete_all
# . . .
Site.create(name: 'PDC',address: '940 3rd Avenue North, Nashville, TN 37201', description: 'Windstream - Primary Data Center')
Site.create(name: 'SDC',address: '425 Duke Drive, Suite 400, Franklin, TN 37067', description: 'Peak 10 - Secondary Data Center')
# . . .