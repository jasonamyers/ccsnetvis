class SiteSubnet < ActiveRecord::Base
  belongs_to :site
  belongs_to :subnet
end
