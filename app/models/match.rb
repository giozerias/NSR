class Match < ActiveRecord::Base
	has_many :superheros, :through => :match
	belongs_to :superheros
end

