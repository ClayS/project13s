class AdminController < ApplicationController

  def sign_in 
    render :sign_in and return
  end
  
  def sign_in_post
    admin = Admin.where(email_address: params[:email_address]).first
    if admin != nil && admin.authenticate(params[:password])
      redirect_to "/animals" and return
    else
      render :sign_in
    end
  end
  
  def listings
    render :listings and return
  end
  
    

end
