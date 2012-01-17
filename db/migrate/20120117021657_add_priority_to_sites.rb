class AddPriorityToSites < ActiveRecord::Migration
  def change
    add_column :sites, :priority, :integer
  end
end
