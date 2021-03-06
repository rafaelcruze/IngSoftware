class QuestionsController < ApplicationController
  load_and_authorize_resource
  before_action :set_question, only: [:show, :edit, :update, :destroy]


  def index
    @questions = Question.all
  end

  def show
  end


  def new
    @question = Question.new
  end


  def edit
  end


  def create
    @user = current_user
    @question = @user.questions.build(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to "/questions", notice: 'Consulta fue creada con éxito.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to "/questions", notice: 'Consulta fue actualizada con éxito.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Consulta fue eliminada con éxito.' }
      format.json { head :no_content }
    end
  end

  private

    def set_question
      @question = Question.find(params[:id])
    end


    def question_params
      params.require(:question).permit(:content)
    end
end
