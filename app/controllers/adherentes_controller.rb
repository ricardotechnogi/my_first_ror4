class AdherentesController < ApplicationController
  before_action :set_adherente, only: [:show, :edit, :update, :destroy]

  # GET /adherentes
  # GET /adherentes.json
  def index
    @adherentes = Adherente.all
  end

  # GET /adherentes/1
  # GET /adherentes/1.json
  def show
  end

  # GET /adherentes/new
  def new
    @adherente = Adherente.new
  end

  # GET /adherentes/1/edit
  def edit
  end

  # POST /adherentes
  # POST /adherentes.json
  def create
    @adherente = Adherente.new(adherente_params)

    respond_to do |format|
      if @adherente.save
        format.html { redirect_to @adherente, notice: 'Adherente was successfully created.' }
        format.json { render action: 'show', status: :created, location: @adherente }
      else
        format.html { render action: 'new' }
        format.json { render json: @adherente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adherentes/1
  # PATCH/PUT /adherentes/1.json
  def update
    respond_to do |format|
      if @adherente.update(adherente_params)
        format.html { redirect_to @adherente, notice: 'Adherente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @adherente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adherentes/1
  # DELETE /adherentes/1.json
  def destroy
    @adherente.destroy
    respond_to do |format|
      format.html { redirect_to adherentes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adherente
      @adherente = Adherente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adherente_params
      params.require(:adherente).permit(:nombre, :user_id)
    end
end
