class AdminController < ApplicationController

  def sign_in 
    render :sign_in and return
  end
  
  def sign_in_post
    redirect_to "/admin/listings" and return
  end
  
  def listings
    render :listings and return
  end
  
    

end
