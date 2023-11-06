class SessionParticipantsController < ApplicationController
  before_action :set_session_participant, only: %i[ show edit update destroy ]

  # GET /session_participants or /session_participants.json
  def index
    @session_participants = SessionParticipant.all
  end

  # GET /session_participants/1 or /session_participants/1.json
  def show
  end

  # GET /session_participants/new
  def new
    @session_participant = SessionParticipant.new
  end

  # GET /session_participants/1/edit
  def edit
  end

  # POST /session_participants or /session_participants.json
  def create
    @session_participant = SessionParticipant.new(session_participant_params)

    respond_to do |format|
      if @session_participant.save
        format.html { redirect_to session_participant_url(@session_participant), notice: "Session participant was successfully created." }
        format.json { render :show, status: :created, location: @session_participant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @session_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /session_participants/1 or /session_participants/1.json
  def update
    respond_to do |format|
      if @session_participant.update(session_participant_params)
        format.html { redirect_to session_participant_url(@session_participant), notice: "Session participant was successfully updated." }
        format.json { render :show, status: :ok, location: @session_participant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @session_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /session_participants/1 or /session_participants/1.json
  def destroy
    @session_participant.destroy

    respond_to do |format|
      format.html { redirect_to session_participants_url, notice: "Session participant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session_participant
      @session_participant = SessionParticipant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def session_participant_params
      params.require(:session_participant).permit(:user_id, :group_id)
    end
end
