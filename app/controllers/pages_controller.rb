class PagesController < ApplicationController
  def home
  	@blog = Blog.all
  end

  def about
    @skills = Skill.all 
  end

  def contact
  end

  def tech_news
  	@tweets = SocialTool.twitter_search('ruby on rails')
  end	
end
