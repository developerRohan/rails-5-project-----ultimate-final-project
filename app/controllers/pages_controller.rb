class PagesController < ApplicationController
  def home
  	@blog = Blog.all
  end

  def about
  end

  def contact
  end
end
