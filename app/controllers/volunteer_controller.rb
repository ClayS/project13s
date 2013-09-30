class VolunteerController < ApplicationController

  def sign_in 
    render :sign_in and return
  end
  
  def sign_in_post
    @volunteer = Volunteer.find_by email: params[:email]
    if @volunteer != nil && @volunteer.authenticate(params[:password])
      session[:user] = @volunteer.id
      redirect_to "/location" and return
    else
      flash[:error] = "Incorrect Email Address and/or Password"
      redirect_to "/sign_in"
    end 
  end
  
  def sign_out_post
    session.clear
    redirect_to "/thank_you"
  end
  
  def sign_up
    render :sign_up
  end
  
  def sign_up_post
    @volunteer                       = Volunteer.new
    @volunteer.first_name            = params[:first_name]
    @volunteer.last_name             = params[:last_name]
    @volunteer.email                 = params[:email]
    @volunteer.password              = params[:password]
    @volunteer.password_confirmation = params[:password_confirmation]
    @volunteer.city                  = params[:city]
    @volunteer.state                 = params[:state]
    @volunteer.affiliation           = params[:affiliation]
    if @volunteer.save
      redirect_to "/location"
    else
      render :sign_up
    end
  end
  
  def location
    render :location
  end
  
  def location_post
    @records = Animal.where(location_city: params[:start_city], location_state: params[:start_state], destination_city: params[:end_city], destination_state: params[:end_state])
    if @records.size == 0
       flash[:error] = "No animals in need at this time!"
       redirect_to "/location"
    else
       render :location
    end
  end
end

  
   #def location_post
     #if @records = Animal.where(location_city: params[:start_city], location_state: params[:start_state], destination_city: params[:end_city], destination_state: params[:end_state])
        #render :location
    # else 
       #flash[:error] = "No animals in need at this time!"
       #redirect_to "/location"
     #end
  #end
 #end
