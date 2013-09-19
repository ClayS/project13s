class MainController < ApplicationController

  def home
    render :home and return
  end
  
  def contact_us
    render :contact_us and return
  end
  
  def contact_us_post
     redirect_to "/thank_you"
  end
    
  
  

  
end
