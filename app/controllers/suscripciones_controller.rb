class SuscripcionesController < ApplicationController
  before_action :set_suscripcion, only: [:show, :edit, :update, :destroy]

  # GET /suscripciones
  # GET /suscripciones.json
  def index
    @suscripciones = Suscripcion.all
  end

  # GET /suscripciones/1
  # GET /suscripciones/1.json
  def show
  end

  # GET /suscripciones/new
  def new
    @suscripcion = Suscripcion.new
  end

  # GET /suscripciones/1/edit
  def edit
  end

  # POST /suscripciones
  # POST /suscripciones.json
  def create
    @suscripcion = Suscripcion.new(suscripcion_params)

    respond_to do |format|
      if @suscripcion.save
        format.html { redirect_to @suscripcion, notice: 'Suscripcion was successfully created.' }
        format.json { render :show, status: :created, location: @suscripcion }
      else
        format.html { render :new }
        format.json { render json: @suscripcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suscripciones/1
  # PATCH/PUT /suscripciones/1.json
  def update
    respond_to do |format|
      if @suscripcion.update(suscripcion_params)
        format.html { redirect_to @suscripcion, notice: 'Suscripcion was successfully updated.' }
        format.json { render :show, status: :ok, location: @suscripcion }
      else
        format.html { render :edit }
        format.json { render json: @suscripcion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suscripciones/1
  # DELETE /suscripciones/1.json
  def destroy
    @suscripcion.destroy
    respond_to do |format|
      format.html { redirect_to suscripciones_url, notice: 'Suscripcion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suscripcion
      @suscripcion = Suscripcion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suscripcion_params
      params.require(:suscripcion).permit(:fecha_inicio, :fecha_termino, :precio, :estado, :usuario_id)
    end
end
