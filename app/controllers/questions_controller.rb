class QuestionsController < ApplicationController
  before_action :set_question, only: %i[update show destroy edit hide]

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to question_path(@question), notice: "Новый вопрос создан!"
    else
      flash.now[:alert] = "При попытке создать вопрос возникли ошибки"

      render :new
    end
  end

  def update
    @question.update(question_params)

    redirect_to question_path(@question), notice: "Вопрос успешно сохранен"
  end

  def destroy
    @question.destroy

    redirect_to questions_path, notice: "Вопрос успешно удален"
  end

  def show
  end

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def edit
  end

  def hide
    @question.update(hidden: true)

    redirect_to questions_path, notice: "Вопрос успешно скрыт"
  end

  private

  def question_params
    params.require(:question).permit(:body, :user_id, :hidden)
  end

  def set_question
    @question = Question.find(params[:id])
  end

  def hidden?
    @question.hidden
  end
end
