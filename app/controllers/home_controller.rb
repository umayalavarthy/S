class HomeController < ApplicationController
  skip_before_filter :authenticate_user!, :except => [:materials]
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

  def aboutus

  end

  def materials

  end

end
