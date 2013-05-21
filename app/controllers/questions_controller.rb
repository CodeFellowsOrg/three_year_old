class QuestionsController < ApplicationController

  def index
    @question = Question.new
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      redirect_to questions_path, notice: "Question created"
    else
      flash[:alert] = "bad"
      render :index
    end
  end

end
