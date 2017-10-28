class PortfoliosController < ApplicationController
	before_action :find_portfolio , only: [:edit , :update , :show , :destroy]

	def index
		@portfolio_items = Portfolio.all

  	end

  	def new 
    	@portfolio_item = Portfolio.new
    	3.times { @portfolio_item.technologies.build }
	end

	def create
	    @portfolio_item = Portfolio.new(portfolio_params)

	    respond_to do |format|
	      if @portfolio_item.save
			format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
	      else
	        format.html { render :new }
	      end
	    end
  	end

  	def edit
  	end

	def update
	    
	    respond_to do |format|
	      if @portfolio_item.update(portfolio_params)
	        format.html { redirect_to portfolios_path, notice: 'The record successfully updated.' }
	      else
	        format.html { render :edit }
	      end
	    end
	end

	def show
		@page_title = @portfolio_item.title
	end

 	def destroy
    # Perform the lookup
    # Destroy/delete the record
    @portfolio_item.destroy

    # Redirect
	redirect_to portfolios_url, notice: 'Record was removed.' 
  end

  private

  def portfolio_params
  	params.require(:portfolio).permit(:title, 
  									  :subtitle,
  									  :body,
  									  technologies_attributes: [:name])
  end

  def find_portfolio
  	@portfolio_item = Portfolio.find(params[:id])
  end

end
