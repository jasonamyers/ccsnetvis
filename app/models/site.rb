class Site < ActiveRecord::Base
  has_many :site_contacts, dependent: :destroy
end
