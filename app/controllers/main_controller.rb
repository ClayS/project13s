class MainController < ApplicationController

  def home
    render :home and return
  end
  
  def contact_us
    render :contact_us and return
  end
  
  def contact_us_post
    @inquiry = Inquiry.new
    @inquiry.name = params[:name]
    @inquiry.email = params[:email]
    @inquiry.body = params[:body]
    if @inquiry.save
      redirect_to "/thank_you"
    else  
     render :contact_us
    end
  end  
end
