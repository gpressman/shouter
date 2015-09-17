class Timeline
	include ActiveModel::Model
    extend ActiveModel::Naming
	
	def initialize user 
	  @user = user
	end

    
end