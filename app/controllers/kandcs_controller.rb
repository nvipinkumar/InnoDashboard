class KandcsController < ApplicationController
  before_action :set_kandc, only: [:show, :edit, :update, :destroy]

  # GET /kandcs
  # GET /kandcs.json
  def index
    @kandcs = Kandc.all
  end

  # GET /kandcs/1
  # GET /kandcs/1.json
  def show
  end

  # GET /kandcs/new
  def new
    @kandc = Kandc.new
  end

  # GET /kandcs/1/edit
  def edit
  end

  # POST /kandcs
  # POST /kandcs.json
  def create
    @kandc = Kandc.new(kandc_params)

    respond_to do |format|
      if @kandc.save
        format.html { redirect_to @kandc, notice: 'Kandc was successfully created.' }
        format.json { render :show, status: :created, location: @kandc }
      else
        format.html { render :new }
        format.json { render json: @kandc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kandcs/1
  # PATCH/PUT /kandcs/1.json
  def update
    respond_to do |format|
      if @kandc.update(kandc_params)
        format.html { redirect_to @kandc, notice: 'Kandc was successfully updated.' }
        format.json { render :show, status: :ok, location: @kandc }
      else
        format.html { render :edit }
        format.json { render json: @kandc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kandcs/1
  # DELETE /kandcs/1.json
  def destroy
    @kandc.destroy
    respond_to do |format|
      format.html { redirect_to kandcs_url, notice: 'Kandc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kandc
      @kandc = Kandc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kandc_params
      params.require(:kandc).permit(:Name, :Summary, :Description, :Owner, :Reviewed, :Status, :Comments, :Action, :Imperative)
    end
end
