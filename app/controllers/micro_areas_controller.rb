class MicroAreasController < ApplicationController
  before_action :set_micro_area, only: [:show, :edit, :update, :destroy]

  # GET /micro_areas
  # GET /micro_areas.json
  def index
    @micro_areas = MicroArea.all
  end

  # GET /micro_areas/1
  # GET /micro_areas/1.json
  def show
  end

  # GET /micro_areas/new
  def new
    @micro_area = MicroArea.new
  end

  # GET /micro_areas/1/edit
  def edit
  end

  # POST /micro_areas
  # POST /micro_areas.json
  def create
    @micro_area = MicroArea.new(micro_area_params)

    respond_to do |format|
      if @micro_area.save
        format.html { redirect_to @micro_area, flash: { success: "Micro Área criada com sucesso!" } }
        format.json { render :show, status: :created, location: @micro_area }
      else
        format.html { render :new }
        format.json { render json: @micro_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micro_areas/1
  # PATCH/PUT /micro_areas/1.json
  def update
    respond_to do |format|
      if @micro_area.update(micro_area_params)
        format.html { redirect_to @micro_area, flash: { success: "Micro Área atualizada com sucesso!" }  }
        format.json { render :show, status: :ok, location: @micro_area }
      else
        format.html { render :edit }
        format.json { render json: @micro_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micro_areas/1
  # DELETE /micro_areas/1.json
  def destroy
    @micro_area.destroy
    respond_to do |format|
      format.html { redirect_to micro_areas_url, flash: { success: "Micro Área apagada com sucesso!" }  }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micro_area
      @micro_area = MicroArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micro_area_params
      params.require(:micro_area).permit(:name, :usf_id)
    end
end
