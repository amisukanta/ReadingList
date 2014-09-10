class Book < ActiveRecord::Base

	scope :finished, ->{where.not(finished_on: nil)}
	scope :recent, ->{where('finished_on > ?', 2.days.ago)} 
	# SCOPE IS GOING TO RETURN A COLLECTION, 
	# IF KEYWORD IS NOT PRESENT, ITS NOT GOING TO RETURN NIL 
	# RATHER GOING TO RETURN ALL 
	scope :search, ->(keyword){where(title: keyword) if keyword.present? }
	#def self.search(keyword)
	# if keyword.present?
	#	where(title: keyword)
	# else
	#  	all
	#  end
	#end

	def finished?
	  finished_on.present?
	end
end
