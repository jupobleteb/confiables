class CalidadesController < ApplicationController
  before_action :set_calidad, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  # GET /calidades
  # GET /calidades.json
  def index
    @calidades = Calidad.all
  end

  # GET /calidades/1
  # GET /calidades/1.json
  def show
  end

  # GET /calidades/new
  def new
    @calidad = Calidad.new
  end

  # GET /calidades/1/edit
  def edit
  end

  # POST /calidades
  # POST /calidades.json
  def create
    @calidad = Calidad.new(calidad_params)

    respond_to do |format|
      if @calidad.save
        format.html { redirect_to @calidad, notice: 'Calidad fue exitosamente creado.' }
        format.json { render :show, status: :created, location: @calidad }
      else
        format.html { render :new }
        format.json { render json: @calidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calidades/1
  # PATCH/PUT /calidades/1.json
  def update
    respond_to do |format|
      if @calidad.update(calidad_params)
        format.html { redirect_to @calidad, notice: 'Calidad  fue exitosamente actualizado.' }
        format.json { render :show, status: :ok, location: @calidad }
      else
        format.html { render :edit }
        format.json { render json: @calidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calidades/1
  # DELETE /calidades/1.json
  def destroy
    @calidad.destroy
    respond_to do |format|
      format.html { redirect_to calidades_url, notice: 'Calidad fue exitosamente destruido.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calidad
      @calidad = Calidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calidad_params
      params.require(:calidad).permit(:calidad_id, :valor, :sla_id, :contrato_id)
    end
end
