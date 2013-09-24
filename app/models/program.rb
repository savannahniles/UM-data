class Program < ActiveRecord::Base
	validates :title, presence: true
	validates :tmsId, presence: true, uniqueness: true
end
