class CompanyemployeesController < ApplicationController
  before_action :set_companyemployee, only: %i[ show edit update destroy ]

  # GET /companyemployees or /companyemployees.json
  def index
    @companyemployees = Companyemployee.all
  end

  # GET /companyemployees/1 or /companyemployees/1.json
  def show
  end

  # GET /companyemployees/new
  def new
    @companyemployee = Companyemployee.new
  end

  # GET /companyemployees/1/edit
  def edit
  end

  # POST /companyemployees or /companyemployees.json
  def create
    @companyemployee = Companyemployee.new(companyemployee_params)

    respond_to do |format|
      if @companyemployee.save
        format.html { redirect_to companyemployee_url(@companyemployee), notice: "Companyemployee was successfully created." }
        format.json { render :show, status: :created, location: @companyemployee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @companyemployee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companyemployees/1 or /companyemployees/1.json
  def update
    respond_to do |format|
      if @companyemployee.update(companyemployee_params)
        format.html { redirect_to companyemployee_url(@companyemployee), notice: "Companyemployee was successfully updated." }
        format.json { render :show, status: :ok, location: @companyemployee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @companyemployee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companyemployees/1 or /companyemployees/1.json
  def destroy
    @companyemployee.destroy

    respond_to do |format|
      format.html { redirect_to companyemployees_url, notice: "Companyemployee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companyemployee
      @companyemployee = Companyemployee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def companyemployee_params
      params.require(:companyemployee).permit(:name, :email, :phonenumber, :companydevice_id, :companyadmin_id)
    end
end
