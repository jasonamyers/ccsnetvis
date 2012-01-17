class AddOrderToSubnets < ActiveRecord::Migration
  def change
    add_column :subnets, :preference, :integer
  end
end
