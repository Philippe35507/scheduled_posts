class FriendsDbsController < ApplicationController
  before_action :set_friends_db, only: %i[ show edit update destroy ]

  # GET /friends_dbs or /friends_dbs.json
  def index
    @friends_dbs = FriendsDb.all
  end

  # GET /friends_dbs/1 or /friends_dbs/1.json
  def show
  end

  # GET /friends_dbs/new
  def new
    @friends_db = FriendsDb.new
  end

  # GET /friends_dbs/1/edit
  def edit
  end

  # POST /friends_dbs or /friends_dbs.json
  def create
    @friends_db = FriendsDb.new(friends_db_params)

    respond_to do |format|
      if @friends_db.save
        format.html { redirect_to friends_db_url(@friends_db), notice: "Friends db was successfully created." }
        format.json { render :show, status: :created, location: @friends_db }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @friends_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friends_dbs/1 or /friends_dbs/1.json
  def update
    respond_to do |format|
      if @friends_db.update(friends_db_params)
        format.html { redirect_to friends_db_url(@friends_db), notice: "Friends db was successfully updated." }
        format.json { render :show, status: :ok, location: @friends_db }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @friends_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friends_dbs/1 or /friends_dbs/1.json
  def destroy
    @friends_db.destroy

    respond_to do |format|
      format.html { redirect_to friends_dbs_url, notice: "Friends db was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friends_db
      @friends_db = FriendsDb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friends_db_params
      params.require(:friends_db).permit(:first_name, :last_name, :email, :phone, :tweeter)
    end
end
