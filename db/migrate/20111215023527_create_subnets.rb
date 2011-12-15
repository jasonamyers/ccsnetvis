class CreateSubnets < ActiveRecord::Migration
  def change
    create_table :subnets do |t|
      t.string :network
      t.text :description
      t.string :netmask
      t.string :gateway

      t.timestamps
    end
  end
end
