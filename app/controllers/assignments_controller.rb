class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show, :update, :destroy]

  # GET /assignments
  def index
    @assignments = Assignment.all

    render json: @assignments
  end

  # GET /assignments/1
  def show
    render json: @assignment
  end

  # POST /assignments
  def create
    @assignment = Assignment.create(assignment_params)

    if @assignment.valid?
      @events = Event.all
      render json: @events, status: :created, location: @assignment
    else
      render json: @assignment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /assignments/1
  def update
    if @assignment.update(assignment_params)
      render json: @assignment
    else
      render json: @assignment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /assignments/1
  def destroy
    @assignment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def assignment_params
      params.require(:assignment).permit(:task_id, :invite_id)
    end
end
