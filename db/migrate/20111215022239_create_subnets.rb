class CreateSubnets < ActiveRecord::Migration
  def change
    create_table :subnets do |t|

      t.timestamps
    end
  end
end
