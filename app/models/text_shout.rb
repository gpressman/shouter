class TextShout < ActiveRecord::Base
	

	def index
		body
	end

	private

	def text_shout_parameters
		params.require(:text_shout).permit(:body)
	end
end
