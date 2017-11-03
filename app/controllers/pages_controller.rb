class PagesController < ApplicationController
  def home
  	@blog = Blog.all
  end

  def about
  end

  def contact
  end

  def tech_news
  	@tweets = SocialTool.twitter_search('ruby on rails')
  end	
end
