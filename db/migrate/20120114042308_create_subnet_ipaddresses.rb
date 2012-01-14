class CreateSubnetIpaddresses < ActiveRecord::Migration
  def change
    create_table :subnet_ipaddresses do |t|
      t.integer :subnet_id
      t.integer :ipaddress_id

      t.timestamps
    end
  end
end
