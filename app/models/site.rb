class Site < ActiveRecord::Base
  has_many :site_contacts, dependent: :destroy
  has_many :site_subnets, dependent: :destroy
end
