class ProyectosController < ApplicationController
   before_action :set_proyecto, only: [:show, :edit, :update, :destroy]

  def index
    @proyectos = Proyecto.all
  end

  def show
  end
  
   # GET /proyectos/new
  def new
    @proyecto = Proyecto.new
  end

  # POST /proyectos
  # POST /proyectos.json
  def create
    @user = User.find(session[:user_id])
    @proyecto = Proyecto.new(proyecto_params)
    @user.proyectos << @proyecto
    @proyecto.update(empresa_id: @user.id)
    #it gets values from skill 
    params[:proskill][:skill_ids] ||= []
    skills = params[:proskill][:skill_ids]
    skills.each do |skill|
      @proskill = Proskill.new(skill_id: skill, proyecto_id: @proyecto.id)
      @proskill.save
    end

    respond_to do |format|
      if @proyecto.save
        format.html { redirect_to @proyecto, notice: 'Proyecto was successfully created.' }
        format.json { render :show, status: :created, location: @proyecto }
      else
        format.html { render :new }
        format.json { render json: @proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /proyectos/1/edit
  def edit
  end

  #PUT /proyectos/1
  def update
    p @user = User.find(session[:user_id])
    #it gets values from skill 
    params[:proskill][:skill_ids] ||= []
    skills = params[:proskill][:skill_ids]

    respond_to do |format|
      if @proyecto.update(proyecto_params)
          skills.each do |skill|
            @proskill = Proskill.new(skill_id: skill, proyecto_id: @proyecto.id)
            @proskill.save
          end
        format.html { redirect_to @proyecto, notice: 'Proyecto was successfully updated.' }
        format.json { render :show, status: :ok, location: @proyecto }
      else
        format.html { render :edit }
        format.json { render json: @proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proyectos/1
  # DELETE /proyectos/1.json
  def destroy
    @proyecto = Proyecto.find(params[:id])
    @proyecto_id = @proyecto.id
    @proyecto.destroy
  end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_proyecto
      @proyecto = Proyecto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proyecto_params
      params.require(:proyecto).permit(:title, :description, :incentive, :result, :num_students, :dead_line)
    end
end