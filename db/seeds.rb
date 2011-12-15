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
Contact.delete_all
# . . .
Contact.create(name: 'Peak 10 Support', phone: '1-866-732-5836', email: 'support@peak10.com')
Contact.create(name: 'Windstream Support', phone: '1-800-600-5050', email: '')
Contact.create(name: 'Jim Jones', phone: '615-642-8451', email: 'james.jones.jr@windstream.com')
# . . .
# Site_Contact.delete_all
# . . .
# Site_Contact.create(contact_id: 1, site_id: 5)
# Site_Contact.create(contact_id: 2, site_id: 4)
# Site_Contact.create(contact_id: 3, site_id: 4)
# . . .