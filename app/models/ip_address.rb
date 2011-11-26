class IpAddress < ActiveRecord::Base
	validates :address, :name, presence: true
	validates :address, uniqueness: true
	validates :name, format: {
		with: %r{\.com$}i,
		message: 'must be a FQDN'
	}
end
