class BloggController < ApplicationController
  def index
  	@detail = Detail.all
  	
  end
  def new
  	@blog = Detail.new
  end
  def create 
  	detail = Detail.create!(username: params[:user],blog: params[:blog],comment: params[:comment])
  end
  def show
  	@detail = Detail.find(params[:id])

  end
  def edit
  	@detail= Detail.find(params[:id])
  end
  def update
  	 	@detail= Detail.find(params[:id])
  	 	@detail = Detail.update(detail_params)
  end
  private
  def detail_params
  	params.require(:detail).permit(:username, :blog, :comment)
  end
  def about
  end
  def contact
  end
  def home
  	
  end
  
  def terms
  	
  end
  def privacy
  	
  end
end
