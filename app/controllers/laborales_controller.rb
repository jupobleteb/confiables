class LaboralesController < ApplicationController
  before_action :set_laboral, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  # GET /laborales
  # GET /laborales.json
  def index
    @laborales = Laboral.all
  end

  # GET /laborales/1
  # GET /laborales/1.json
  def show
  end

  # GET /laborales/new
  def new
    @laboral = Laboral.new
  end

  # GET /laborales/1/edit
  def edit
  end

  # POST /laborales
  # POST /laborales.json
  def create
    @laboral = Laboral.new(laboral_params)

    respond_to do |format|
      if @laboral.save
        format.html { redirect_to @laboral, notice: 'Laboral fue exitosamente creado.' }
        format.json { render :show, status: :created, location: @laboral }
      else
        format.html { render :new }
        format.json { render json: @laboral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laborales/1
  # PATCH/PUT /laborales/1.json
  def update
    respond_to do |format|
      if @laboral.update(laboral_params)
        format.html { redirect_to @laboral, notice: 'Laboral  fue exitosamente actualizado.' }
        format.json { render :show, status: :ok, location: @laboral }
      else
        format.html { render :edit }
        format.json { render json: @laboral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laborales/1
  # DELETE /laborales/1.json
  def destroy
    @laboral.destroy
    respond_to do |format|
      format.html { redirect_to laborales_url, notice: 'Laboral fue exitosamente destruido.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laboral
      @laboral = Laboral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def laboral_params
      params.require(:laboral).permit(:datoslaborales_id, :correo, :telefono_id, :fechacontrato, :descripcion, :direccion_id, :usuario_id, :empresa_id)
    end
end
