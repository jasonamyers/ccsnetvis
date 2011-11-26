class CreateIpAddresses < ActiveRecord::Migration
  def change
    create_table :ip_addresses do |t|
      t.string :address
      t.string :name
      t.string :purpose
      t.string :url

      t.timestamps
    end
  end
end
