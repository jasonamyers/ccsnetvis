class SiteContact < ActiveRecord::Base
  belongs_to :site
  belongs_to :contact
end
