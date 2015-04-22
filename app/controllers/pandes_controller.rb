class PandesController < ApplicationController
  before_action :set_pande, only: [:show, :edit, :update, :destroy]

  # GET /pandes
  # GET /pandes.json
  def index
    @pandes = Pande.all
  end

  # GET /pandes/1
  # GET /pandes/1.json
  def show
  end

  # GET /pandes/new
  def new
    @pande = Pande.new
  end

  # GET /pandes/1/edit
  def edit
  end

  # POST /pandes
  # POST /pandes.json
  def create
    @pande = Pande.new(pande_params)

    respond_to do |format|
      if @pande.save
        format.html { redirect_to @pande, notice: 'Pande was successfully created.' }
        format.json { render :show, status: :created, location: @pande }
      else
        format.html { render :new }
        format.json { render json: @pande.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pandes/1
  # PATCH/PUT /pandes/1.json
  def update
    respond_to do |format|
      if @pande.update(pande_params)
        format.html { redirect_to @pande, notice: 'Pande was successfully updated.' }
        format.json { render :show, status: :ok, location: @pande }
      else
        format.html { render :edit }
        format.json { render json: @pande.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pandes/1
  # DELETE /pandes/1.json
  def destroy
    @pande.destroy
    respond_to do |format|
      format.html { redirect_to pandes_url, notice: 'Pande was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pande
      @pande = Pande.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pande_params
      params.require(:pande).permit(:Name, :Summary, :Description, :Owner, :Reviewed, :Status, :Comments, :Action, :Imperative)
    end
end
