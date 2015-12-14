class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def index
  	@questions = Question.all
  end

  def show
  end
	# GET /questions/new
	def new
    @proyecto = Proyecto.find(params[:proyecto_id])
    @question = Question.new
	end
  # POST /users
  # POST /users.json
	def create
    @user = User.find(session[:user_id])
    @proyecto = Proyecto.find(params[:proyecto_id])
    # @proyecto = Proyecto.find(2)
		@question = Question.new(question_params)
    @user.questions << @question
    @proyecto.questions << @question
    # @question.update(user_id: @user.id)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
	end

	# GET /questions/1/edit
	def edit
	end

  #PUT /questions/1
	def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
	end

	# DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @question = Question.find(params[:id])
    @question_id = @question.id
    @question.destroy
  end



	private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:title, :question, :question_type)
    end
end
