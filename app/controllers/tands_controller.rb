class TandsController < ApplicationController
  before_action :set_tand, only: [:show, :edit, :update, :destroy]

  # GET /tands
  # GET /tands.json
  def index
    @tands = Tand.all
  end

  # GET /tands/1
  # GET /tands/1.json
  def show
  end

  # GET /tands/new
  def new
    @tand = Tand.new
  end

  # GET /tands/1/edit
  def edit
  end

  # POST /tands
  # POST /tands.json
  def create
    @tand = Tand.new(tand_params)

    respond_to do |format|
      if @tand.save
        format.html { redirect_to @tand, notice: 'Tand was successfully created.' }
        format.json { render :show, status: :created, location: @tand }
      else
        format.html { render :new }
        format.json { render json: @tand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tands/1
  # PATCH/PUT /tands/1.json
  def update
    respond_to do |format|
      if @tand.update(tand_params)
        format.html { redirect_to @tand, notice: 'Tand was successfully updated.' }
        format.json { render :show, status: :ok, location: @tand }
      else
        format.html { render :edit }
        format.json { render json: @tand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tands/1
  # DELETE /tands/1.json
  def destroy
    @tand.destroy
    respond_to do |format|
      format.html { redirect_to tands_url, notice: 'Tand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tand
      @tand = Tand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tand_params
      params.require(:tand).permit(:Name, :Summary, :Description, :Owner, :Reviewed, :Status, :Comments, :Action, :Imperative)
    end
end
