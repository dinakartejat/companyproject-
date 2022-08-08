class CompanydevicesController < ApplicationController
  before_action :set_companydevice, only: %i[ show edit update destroy ]

  # GET /companydevices or /companydevices.json
  def index
    @companydevices = Companydevice.all
  end

  # GET /companydevices/1 or /companydevices/1.json
  def show
  end

  # GET /companydevices/new
  def new
    @companydevice = Companydevice.new
  end

  # GET /companydevices/1/edit
  def edit
  end

  # POST /companydevices or /companydevices.json
  def create
    @companydevice = Companydevice.new(companydevice_params)

    respond_to do |format|
      if @companydevice.save
        format.html { redirect_to companydevice_url(@companydevice), notice: "Companydevice was successfully created." }
        format.json { render :show, status: :created, location: @companydevice }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @companydevice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companydevices/1 or /companydevices/1.json
  def update
    respond_to do |format|
      if @companydevice.update(companydevice_params)
        format.html { redirect_to companydevice_url(@companydevice), notice: "Companydevice was successfully updated." }
        format.json { render :show, status: :ok, location: @companydevice }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @companydevice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companydevices/1 or /companydevices/1.json
  def destroy
    @companydevice.destroy

    respond_to do |format|
      format.html { redirect_to companydevices_url, notice: "Companydevice was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companydevice
      @companydevice = Companydevice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def companydevice_params
      params.require(:companydevice).permit(:devicename, :device_type, :os_type, :service_tag, :companyemployee_id)
    end
end
