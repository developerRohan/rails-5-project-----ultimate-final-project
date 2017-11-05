class TopicsController < ApplicationController
	layout "blogs"
  def index
  	@topics = Topic.all
  end

  def show
  	@topic = Topic.find(params[:id])
  end
end
