# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
IpAddress.delete_all
# . . .
IpAddress.create(address: '192.168.16.1',name: 'sdcsw01', purpose: 'Core Switch Stack at SDC')
IpAddress.create(address: '192.168.4.200',name: 'pdcsw01', purpose: 'Core Switch Stack at PDC')
# . . . 