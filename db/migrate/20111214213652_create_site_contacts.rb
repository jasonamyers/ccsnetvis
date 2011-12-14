class CreateSiteContacts < ActiveRecord::Migration
  def change
    create_table :site_contacts do |t|
      t.integer :contact_id
      t.integer :site_id

      t.timestamps
    end
  end
end
