class ServerSoftwaresController < ApplicationController
  before_action :set_server_software, only: %i[ show edit update destroy ]

  # GET /server_softwares or /server_softwares.json
  def index
    @server_softwares = ServerSoftware.all
  end

  # GET /server_softwares/1 or /server_softwares/1.json
  def show
  end

  # GET /server_softwares/new
  def new
    @server_software = ServerSoftware.new
  end

  # GET /server_softwares/1/edit
  def edit
  end

  # POST /server_softwares or /server_softwares.json
  def create
    @server_software = ServerSoftware.new(server_software_params)

    respond_to do |format|
      if @server_software.save
        format.html { redirect_to server_url(@server_software.server, tab: "softwares"), notice: "Server software was successfully created." }
        format.json { render :show, status: :created, location: @server_software }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @server_software.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /server_softwares/1 or /server_softwares/1.json
  def update
    respond_to do |format|
      if @server_software.update(server_software_params)
        format.html { redirect_to server_url(@server_software.server, tab: "softwares"), notice: "Server software was successfully updated." }
        format.json { render :show, status: :ok, location: @server_software }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @server_software.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /server_softwares/1 or /server_softwares/1.json
  def destroy
    server = @server_software.server
    @server_software.destroy

    respond_to do |format|
      format.html { redirect_to server_url(server, tab: "softwares"), notice: "Server software was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_server_software
      @server_software = ServerSoftware.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def server_software_params
      params.require(:server_software).permit(:server_id, :software_id)
    end
end
