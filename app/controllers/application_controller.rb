class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern

  before_action :set_title 
	def set_title
    	@page_title = "itsme-ROHAN | My Portfolio Website"
  	end


end
