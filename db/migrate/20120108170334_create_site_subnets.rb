class CreateSiteSubnets < ActiveRecord::Migration
  def change
    create_table :site_subnets do |t|
      t.integer :site_id
      t.integer :subnet_id

      t.timestamps
    end
  end
end
