class UsfsController < ApplicationController
  before_action :set_usf, only: [:show, :edit, :update, :destroy]

  # GET /usfs
  # GET /usfs.json
  def index
    @usfs = Usf.all
  end

  # GET /usfs/1
  # GET /usfs/1.json
  def show
  end

  # GET /usfs/new
  def new
    @usf = Usf.new
  end

  # GET /usfs/1/edit
  def edit
  end

  # POST /usfs
  # POST /usfs.json
  def create
    @usf = Usf.new(usf_params)

    respond_to do |format|
      if @usf.save
        format.html { redirect_to @usf, flash: { success: "USF criado com sucesso!" } }
        format.json { render :show, status: :created, location: @usf }
      else
        format.html { render :new }
        format.json { render json: @usf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usfs/1
  # PATCH/PUT /usfs/1.json
  def update
    respond_to do |format|
      if @usf.update(usf_params)
        format.html { redirect_to @usf, flash: { success: "USF atualizado com sucesso!" } }
        format.json { render :show, status: :ok, location: @usf }
      else
        format.html { render :edit }
        format.json { render json: @usf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usfs/1
  # DELETE /usfs/1.json
  def destroy
    @usf.destroy
    respond_to do |format|
      format.html { redirect_to usfs_url, flash: { success: "USF apagado com sucesso!" } }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usf
      @usf = Usf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usf_params
      params.require(:usf).permit(:nome, :nome_fantasia, :cnes, :telefone, :bairro, :cep, :logradouro, :numero, :complemento, :ponto_de_referencia, :area)
    end
end
