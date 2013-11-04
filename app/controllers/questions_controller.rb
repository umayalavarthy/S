class QuestionsController < ApplicationController
  # GET /questions
  # GET /questions.json
  before_filter :hacker_admin_auth
  def index
    @exams=Exam.all
    if params[:exam]
      @questions = Exam.find(params[:exam]).questions
    else
      @questions = Question.all
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @questions }
    end
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    @question = Question.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @question }
    end
  end

  # GET /questions/new
  # GET /questions/new.json
  def new
    @question = Question.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @question }
    end
  end

  # GET /questions/1/edit
  def edit
    @question = Question.find(params[:id])
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(params[:question])
    exam_ids = [params[:exam_id1],params[:exam_id2],params[:exam_id3],params[:exam_id4]]
    exams = exam_ids.reject(&:empty?)
    respond_to do |format|

      if exams.length > 0
        if @question.save
          exams.each do |ex|
            @exam_question = ExamsQuestion.new
            @exam_question.exam_id = ex
            @exam_question.question_id = @question.id
            @exam_question.save
          end
        else
          format.html { render action: "new" }
          format.json { render json: @question.errors, status: :unprocessable_entity }
        end
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render json: @question, status: :created, location: @question }
      else
        format.html { render action: "new" }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /questions/1
  # PUT /questions/1.json
  def update
    @question = Question.find(params[:id])
    exam_ids = [params[:exam_id1],params[:exam_id2],params[:exam_id3],params[:exam_id4]]
    exams = exam_ids.reject(&:empty?)
    respond_to do |format|
      if exams.length > 0
        if @question.update_attributes(params[:question])
          ExamsQuestion.find_all_by_question_id(@question.id).each do |eq|
            eq.delete
          end
          exams.each do |ex|
            @exam_question = ExamsQuestion.new
            @exam_question.exam_id = ex
            @exam_question.question_id = @question.id
            @exam_question.save
          end
          format.html { redirect_to @question, notice: 'Question was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @question.errors, status: :unprocessable_entity }
        end
      else
         redirect_to edit_question_path(@question)
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    respond_to do |format|
      format.html { redirect_to questions_url }
      format.json { head :no_content }
    end
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
