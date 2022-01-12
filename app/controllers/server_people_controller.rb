class ServerPeopleController < ApplicationController
  before_action :set_server_person, only: %i[ show edit update destroy ]

  # GET /server_people or /server_people.json
  def index
    @server_people = ServerPerson.all
  end

  # GET /server_people/1 or /server_people/1.json
  def show
  end

  # GET /server_people/new
  def new
    @server_person = ServerPerson.new
  end

  # GET /server_people/1/edit
  def edit
  end

  # POST /server_people or /server_people.json
  def create
    @server_person = ServerPerson.new(server_person_params)

    respond_to do |format|
      if @server_person.save
        format.html { redirect_to server_url(@server_person.server, tab: "owner"), notice: "Server person was successfully created." }
        format.json { render :show, status: :created, location: @server_person }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @server_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /server_people/1 or /server_people/1.json
  def update
    respond_to do |format|
      if @server_person.update(server_person_params)
        format.html { redirect_to server_url(@server_person.server, tab: "owner"), notice: "Server person was successfully updated." }
        format.json { render :show, status: :ok, location: @server_person }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @server_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /server_people/1 or /server_people/1.json
  def destroy
    server = @server_person.server
    @server_person.destroy

    respond_to do |format|
      format.html { redirect_to server_url(server, tab: "owner"), notice: "Server person was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_server_person
      @server_person = ServerPerson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def server_person_params
      params.require(:server_person).permit(:server_id, :role, :people_id)
    end
end
