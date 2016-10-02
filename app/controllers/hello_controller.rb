class HelloController < ApplicationController
  def index
  	@user = User.all
  	checkuser
  end
  def checkuser
  	
  	name = params[:username]

  	pass = params[:password]

  	kq = @user.find{|user|user.username== name }
  	if kq == nil
  		@result = "Dang Nhap Khong Thanh Cong"
  	else

  		redirect_to blogg_url

  	end
  	 render 'index'

  end

  def show
  end
  
  private 
  def user_params
  	params.require(:username, :password)
  end

  def err

  end
  def succ

  end


  private
  def hello_params
  	params.require(:username, :password)
  	
  end
end
