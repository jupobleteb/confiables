class HabilidadesController < ApplicationController
  before_action :set_habilidad, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  # GET /habilidades
  # GET /habilidades.json
  def index
    @habilidades = Habilidad.all
  end

  # GET /habilidades/1
  # GET /habilidades/1.json
  def show
  end

  # GET /habilidades/new
  def new
    @habilidad = Habilidad.new
  end

  # GET /habilidades/1/edit
  def edit
  end

  # POST /habilidades
  # POST /habilidades.json
  def create
    @habilidad = Habilidad.new(habilidad_params)

    respond_to do |format|
      if @habilidad.save
        format.html { redirect_to @habilidad, notice: 'Habilidad fue exitosamente creado.' }
        format.json { render :show, status: :created, location: @habilidad }
      else
        format.html { render :new }
        format.json { render json: @habilidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /habilidades/1
  # PATCH/PUT /habilidades/1.json
  def update
    respond_to do |format|
      if @habilidad.update(habilidad_params)
        format.html { redirect_to @habilidad, notice: 'Habilidad  fue exitosamente actualizado.' }
        format.json { render :show, status: :ok, location: @habilidad }
      else
        format.html { render :edit }
        format.json { render json: @habilidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /habilidades/1
  # DELETE /habilidades/1.json
  def destroy
    @habilidad.destroy
    respond_to do |format|
      format.html { redirect_to habilidades_url, notice: 'Habilidad fue exitosamente destruido.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habilidad
      @habilidad = Habilidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def habilidad_params
      params.require(:habilidad).permit(:habilidad_id, :nombre, :descripcion, :usuario_id)
    end
end
