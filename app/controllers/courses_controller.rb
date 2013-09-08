class CoursesController < ApplicationController
  # GET /courses
  # GET /courses.json
  before_filter :hacker_admin_auth
  def index
    @courses = Course.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses }
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @course = Course.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/new
  # GET /courses/new.json
  def new
    @course = Course.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/1/edit
  def edit
    @course = Course.find(params[:id])
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(params[:course])

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render json: @course, status: :created, location: @course }
      else
        format.html { render action: "new" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /courses/1
  # PUT /courses/1.json
  def update
    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url }
      format.json { head :no_content }
    end
  end

  def get_course_branches
    course = Course.find(params[:id])

    course_branches = course.branches.order("name ASC").select("branches.id, branches.name")
    @course_options = "<option value=''>Select</option>"
    unless course_branches.empty?
      course_branches.each do |course_branch|
        @course_options << "<option value='#{course_branch.id}'>#{course_branch.name} </option>"
      end
    end
    render :text => @course_options
  end

  private
  def hacker_admin_auth
    if user_signed_in?
      puts "userrrrrrrrrrrrrrrrrrrrrrr"
      if current_user.user_type != 507
        puts "adminnnnnnnnnnnnnnnnnnn"
        redirect_to root_path;
      end
    end
  end

end
