class ProfessionalTypesController < ApplicationController
  before_action :set_professional_type, only: [:show, :edit, :update, :destroy]

  # GET /professional_types
  # GET /professional_types.json
  def index
    @professional_types = ProfessionalType.all
  end

  # GET /professional_types/1
  # GET /professional_types/1.json
  def show
  end

  # GET /professional_types/new
  def new
    @professional_type = ProfessionalType.new
  end

  # GET /professional_types/1/edit
  def edit
  end

  # POST /professional_types
  # POST /professional_types.json
  def create
    @professional_type = ProfessionalType.new(professional_type_params)

    respond_to do |format|
      if @professional_type.save
        format.html { redirect_to @professional_type, flash: { success: "Tipo de profissional criado com sucesso!" } }
        format.json { render :show, status: :created, location: @professional_type }
      else
        format.html { render :new }
        format.json { render json: @professional_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /professional_types/1
  # PATCH/PUT /professional_types/1.json
  def update
    respond_to do |format|
      if @professional_type.update(professional_type_params)
        format.html { redirect_to @professional_type, flash: { success: "Tipo de profissional atualizado com sucesso!" } }
        format.json { render :show, status: :ok, location: @professional_type }
      else
        format.html { render :edit }
        format.json { render json: @professional_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professional_types/1
  # DELETE /professional_types/1.json
  def destroy
    @professional_type.destroy
    respond_to do |format|
      format.html { redirect_to professional_types_url, flash: { success: "Tipo de profissional apagado com sucesso!" } }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professional_type
      @professional_type = ProfessionalType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professional_type_params
      params.require(:professional_type).permit(:name)
    end
end
