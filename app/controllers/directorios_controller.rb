class DirectoriosController < ApplicationController
  before_action :set_directorio, only: [:show, :edit, :update, :destroy]

  # GET /directorios
  # GET /directorios.json
  def index
    @directorios = Directorio.all.order('id DESC').page(params[:page]).per_page(6).search(params[:search])
  end

  # GET /directorios/1
  # GET /directorios/1.json
  def show
  end

  # GET /directorios/new
  def new
    @directorio = Directorio.new
  end

  # GET /directorios/1/edit
  def edit
  end

  # POST /directorios
  # POST /directorios.json
  def create
    @directorio = Directorio.new(directorio_params)

    respond_to do |format|
      if @directorio.save
        format.html { redirect_to @directorio, notice: 'Directorio was successfully created.' }
        format.json { render :show, status: :created, location: @directorio }
      else
        format.html { render :new }
        format.json { render json: @directorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /directorios/1
  # PATCH/PUT /directorios/1.json
  def update
    respond_to do |format|
      if @directorio.update(directorio_params)
        format.html { redirect_to @directorio, notice: 'Directorio was successfully updated.' }
        format.json { render :show, status: :ok, location: @directorio }
      else
        format.html { render :edit }
        format.json { render json: @directorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directorios/1
  # DELETE /directorios/1.json
  def destroy
    @directorio.destroy
    respond_to do |format|
      format.html { redirect_to directorios_url, notice: 'Directorio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_directorio
      @directorio = Directorio.find_by_slug(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def directorio_params
      params.require(:directorio).permit(:slug, :foto_perfil, :foto_portada, :nombre, :descripcion_corta, :descripcion_larga, :telefono, :celular, :correo, :pais, :ciudad, :direccion, :sitio_web, :facebook, :twitter, :youtube, :latitud, :longitud, :codigo_qr, :categoria_id, :usuario_id)
    end
end
