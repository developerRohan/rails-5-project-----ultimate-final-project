class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern

  before_action :set_title , :set_copyright
	def set_title
    	@page_title = "itsme-ROHAN | My Portfolio Website"
  	end

  	def set_copyright
  		@copyright = CopyrightGem::Renderer.copyright "rohan arora" , "ruby on rails developer"
  	end


module CopyrightGem
	class Renderer
		def self.copyright name , designation
			"&copy; | #{name} - #{designation} | All rights reserved".html_safe
		end
	end
end
end
