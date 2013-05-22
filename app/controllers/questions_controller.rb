class QuestionsController < ApplicationController

  def index
    @question = Question.new
    @questions = Question.all
  end

  def create
    @question = current_user.questions.build(params[:question])
    if current_user.save
      redirect_to questions_path, notice: "Question created"
    else
      flash[:alert] = "Question did not save"
      render :index
    end
  end

end
