class InvitesController < ApplicationController
  before_action :set_invite, only: [:show, :update, :destroy]

  # GET /invites
  def index
    @invites = Invite.all

    render json: @invites
  end

  # GET /invites/1
  def show
    render json: @invite
  end

  # POST /invites
  def create
    @invite = Invite.new(invite_params)

    if @invite.save
      @events = Event.all
      render json: @events, status: :created, location: @invite
    else
      render json: @invite.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /invites/1
  def update
    if @invite.update(invite_params)
      render json: @invite
    else
      render json: @invite.errors, status: :unprocessable_entity
    end
  end

  # DELETE /invites/1
  def destroy
    @invite.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invite
      @invite = Invite.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def invite_params
      params.require(:invite).permit(:user_id, :event_id, :status)
    end
end
