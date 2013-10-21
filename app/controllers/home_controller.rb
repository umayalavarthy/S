class HomeController < ApplicationController
  skip_before_filter :authenticate_user!
  before_filter :list_notifications
  def index
      if params[:update_profile]
        @profile = true
      end
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
    if params["/home/create_user_details"]
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
      @user.branch_id = params[:branch_id]
      if params[:branch_id].to_i != 0
        @user.course_id = Branch.find(params[:branch_id]).course_id
      end
      @user.save
      redirect_to user_profile_home_index_path
    end
  end



  def gallery

  end
  def abouties

  end
  def allusers
     @users = User.all(:conditions=>"confirmed_at is NOT NULL")
  end
  def user_profile
    @user = current_user
  end

  private
  def list_notifications
    @notifications = Notification.all
  end

end
