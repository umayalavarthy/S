class HomeController < ApplicationController
  
  def index
    
  end

  def location

  end

  def programmes_offered
	@courses = Course.all
  end

  def notifications

  end

  def features

  end

end
