class Book < ActiveRecord::Base

	scope :finished, ->{where.not(finished_on: nil)}
	scope :recent, ->{where('finished_on > ?', 2.days.ago)} 
	# SCOPE IS GOING TO RETURN A COLLECTION, 
	# IF KEYWORD IS NOT PRESENT, ITS NOT GOING TO RETURN NIL 
	# RATHER GOING TO RETURN ALL 
	scope :search, ->(keyword){where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }
	
	before_save :set_keywords



	protected
	  def set_keywords
	  	self.keywords = [title, author, description].map(&:downcase).join(' ')
	  end
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
