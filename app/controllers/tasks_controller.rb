class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]
  skip_before_action :authorized

  # GET /tasks
  def index
    @tasks = Task.all

    render json: @tasks
  end

  # GET /tasks/1
  def show
    render json: @task
  end

  # POST /tasks
  def create
    @task = Task.create(task_params)
    if @task.valid?
      @events = Event.all
      render json: @events, status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    @assignment = Assignment.all.find_by(task_id: @task.id)
    if @assignment
      @assignment.destroy
    end
    @task.destroy
    @events = Event.all
    render json: @events, status: :created
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def task_params
      params.require(:task).permit(:invite_id, :name)
    end
end
