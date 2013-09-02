class HomeController < ApplicationController
  skip_before_filter :authenticate_user!
  def index
    
  end

  def location

  end

  def programmes_offered
    @branches = Branch.all
  end

  def notifications

  end

  def features

  end

  def aboutus

  end

  def materials

  end

  def aboutdirectors

  end

  def create_user_details
    @user = current_user
    redirect_to root_path;
  end
  def create
    @user = current_user
    @user.name=params["/home/create_user_details"]["name"]
    @user.phone = params["/home/create_user_details"]["phone"]
    @user.college =  params["/home/create_user_details"]["college"]
    @user.save
    redirect_to root_path;
  end

end
