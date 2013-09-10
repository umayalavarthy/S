class HomeController < ApplicationController
  skip_before_filter :authenticate_user!
  def index
    
  end

  def location
    @city=params[:city]
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
    @user.gender =  params["/home/create_user_details"]["gender"]
    @user.born =  Date.new(params["/home/create_user_details"]["born(1i)"].to_i,
                           params["/home/create_user_details"]["born(2i)"].to_i,
                           params["/home/create_user_details"]["born(3i)"].to_i)
    @user.gate_rank = params["/home/create_user_details"]["gate_rank"]
    @user.ies_rank = params["/home/create_user_details"]["ies_rank"]
    @user.pursuing = params["/home/create_user_details"]["pursuing"]
    @user.save
    redirect_to root_path;
  end

  def gallery

  end
  def abouties

  end
  def allusers
     @users = User.all
  end

end
