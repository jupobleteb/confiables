class ContratosController < ApplicationController
  before_action :set_contrato, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  # GET /contratos
  # GET /contratos.json
  def index
    @contratos = Contrato.all
  end

  # GET /contratos/1
  # GET /contratos/1.json
  def show
   # @calidad= Calidad.new
  end

  # GET /contratos/new
  def new
    @contrato = Contrato.new
   
    @all_slas= Sla.all
    @sla_rules= @contrato.calidades.build
  end

  # GET /contratos/1/edit
  def edit
  end

  # POST /contratos
  # POST /contratos.json
  def create
    @contrato = Contrato.new(contrato_params)

     params[:slas][:sla_id].each do |sla|
        if !sla.empty?
           @contrato.calidades.build(:sla_id => sla)
        end
    end

    respond_to do |format|
      if @contrato.save
        format.html { redirect_to @contrato, notice: 'Contrato fue exitosamente creado.' }
        format.json { render :show, status: :created, location: @contrato }
      else
        format.html { render :new }
        format.json { render json: @contrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contratos/1
  # PATCH/PUT /contratos/1.json
  def update
    respond_to do |format|
      if @contrato.update(contrato_params)
        format.html { redirect_to @contrato, notice: 'Contrato  fue exitosamente actualizado.' }
        format.json { render :show, status: :ok, location: @contrato }
      else
        format.html { render :edit }
        format.json { render json: @contrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contratos/1
  # DELETE /contratos/1.json
  def destroy
    @contrato.destroy
    respond_to do |format|
      format.html { redirect_to contratos_url, notice: 'Contrato fue exitosamente destruido.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contrato
      @contrato = Contrato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contrato_params
      params.require(:contrato).permit(:contrato_id, :prestador, :nombre, :descripcion, :fechaInicio, :fechaFin, :clausulaTermino, :evalucion, :valorservicio, :comision, :usuario_id)
    end
end
