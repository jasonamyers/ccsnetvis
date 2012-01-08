class CreateSubnetIpAddressesses < ActiveRecord::Migration
  def change
    create_table :subnet_ip_addressesses do |t|
      t.integer :subnet_id
      t.integer :ipaddress_id

      t.timestamps
    end
  end
end
