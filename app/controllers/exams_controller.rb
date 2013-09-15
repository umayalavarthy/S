class ExamsController < ApplicationController
  # GET /exams
  # GET /exams.json
  before_filter :hacker_admin_auth, :except=>[:index, :show, :start_exam, :update_exam]
  def index
    if current_user.user_type == 507
      @exams = Exam.all
    else
      if current_user.branch_id
        @exams = Exam.find_all_by_branch_id(current_user.branch_id)
      else
        @exams = nil
      end
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exams }
    end
  end

  # GET /exams/1
  # GET /exams/1.json
  def show
    @exam = Exam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exam }
    end
  end

  # GET /exams/new
  # GET /exams/new.json
  def new
    @exam = Exam.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exam }
    end
  end

  # GET /exams/1/edit
  def edit
    @exam = Exam.find(params[:id])
  end

  # POST /exams
  # POST /exams.json
  def create
    @exam = Exam.new(params[:exam])
    @exam.branch_id = params[:branch_id]
    respond_to do |format|
      if @exam.save
        format.html { redirect_to @exam, notice: 'Exam was successfully created.' }
        format.json { render json: @exam, status: :created, location: @exam }
      else
        format.html { render action: "new" }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exams/1
  # PUT /exams/1.json
  def update
    @exam = Exam.find(params[:id])

    respond_to do |format|
      if @exam.update_attributes(params[:exam])
        @exam.branch_id = params[:branch_id]
        @exam.save
        format.html { redirect_to @exam, notice: 'Exam was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exams/1
  # DELETE /exams/1.json
  def destroy
    @exam = Exam.find(params[:id])
    @exam.destroy

    respond_to do |format|
      format.html { redirect_to exams_url }
      format.json { head :no_content }
    end
  end

  def start_exam
    @exam = Exam.find(params[:id])
    c = @exam.questions.count
    @questions = @exam.questions.sample(c)
  end
  def update_exam
    @exam = Exam.find(params[:id])
    @qcount = @exam.questions.count
    arr = (1..@qcount).to_a
    @total =0
    arr.each do |n|
      @total += params["answer-#{n}"].to_i
    end
    @result= Testresult.new
    @result.user_id = current_user.id
    @result.exam_id = @exam.id
    @result.score = @total
    @result.save
  end

  private
  def hacker_admin_auth
        if user_signed_in?
          if current_user.user_type != 507
            redirect_to root_path;
          end
        end
  end
end
