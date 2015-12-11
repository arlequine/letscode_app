class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  def show
  	@questions = Question.all
  	# render 'sessions/'
  end
	# GET /questions/new
	def new
		@question = Question.find(params[:id])
    @answer = Answer.new
	end
  # POST /users
  # POST /users.json
	def create
		@user = User.find(session[:user_id])
    puts "X" * 50
    puts params[:question_id]
    puts params[:id]
		# @question = Question.find(params[:question_id])
  #   puts @question
		# @answer = Answer.new(answer_params)
		# @question.answers << @answer
		# @answer.update(responder_id: @user.id)


  #   respond_to do |format|
  #     if @answer.save
  #       format.html { redirect_to @answer, notice: 'Answer was successfully created.' }
  #       format.json { render :show, status: :created, location: @answer }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @answer.errors, status: :unprocessable_entity }
  #     end
  #   end

	end

  # GET /ponies/1/edit
  def edit
    @user = User.find(session[:user_id])
    @question = Question.find_by(user_id: @user.id)
  end

  # PATCH/PUT /ponies/1
  # PATCH/PUT /ponies/1.json
  def update
    @user = User.find(session[:user_id])
    @question = Question.find_by(user_id: @user.id)
    @answer = Answer.find(params[:id])
    @question.answers << @answer
    @answer.update(responder_id: @user.id)

    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to @answer, notice: 'Answers was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :edit }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end     

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:answer)
    end
end