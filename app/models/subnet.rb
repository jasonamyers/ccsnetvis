class Subnet < ActiveRecord::Base
  has_many :site_subnets, dependent: :destroy
end
