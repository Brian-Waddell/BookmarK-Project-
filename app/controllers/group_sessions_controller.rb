class GroupSessionsController < ApplicationController
  before_action :set_group_session, only: %i[ show edit update destroy ]

  # GET /group_sessions or /group_sessions.json
  def index
    @group_sessions = GroupSession.all
  end

  # GET /group_sessions/1 or /group_sessions/1.json
  def show
  end

  # GET /group_sessions/new
  def new
    @group_session = GroupSession.new
  end

  # GET /group_sessions/1/edit
  def edit
  end

  # POST /group_sessions or /group_sessions.json
  def create
    @group_session = GroupSession.new(group_session_params)

    respond_to do |format|
      if @group_session.save
        format.html { redirect_to group_session_url(@group_session), notice: "Group session was successfully created." }
        format.json { render :show, status: :created, location: @group_session }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_sessions/1 or /group_sessions/1.json
  def update
    respond_to do |format|
      if @group_session.update(group_session_params)
        format.html { redirect_to group_session_url(@group_session), notice: "Group session was successfully updated." }
        format.json { render :show, status: :ok, location: @group_session }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @group_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_sessions/1 or /group_sessions/1.json
  def destroy
    @group_session.destroy

    respond_to do |format|
      format.html { redirect_to group_sessions_url, notice: "Group session was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_session
      @group_session = GroupSession.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_session_params
      params.require(:group_session).permit(:owner_id, :book_id, :name_of_group, :list_of_members)
    end
end
