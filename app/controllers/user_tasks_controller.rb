class UserTasksController < ApplicationController
  before_action :set_user
  before_action :set_user_task, only: [:show, :update, :destroy]

  # GET /user_tasks.json
  def index
    @user_tasks = @user.user_tasks

    render json: @user_tasks
  end

  # GET /user_tasks/1.json
  def show
    render json: @user_task
  end

  # POST /user_tasks.json
  def create
    @user_task = @user.user_tasks.new(user_task_params)

    if @user_task.save
      render json: @user_task
    else
      render json: @user_task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_tasks/1.json
  def update
    if @user_task.update(user_task_params)
      render json: @user_task
    else
      render json: @user_task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_tasks/1.json
  def destroy
    @user_task.destroy
    head :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_user_task
      @user_task = @user.user_tasks.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_task_params
      params.fetch(:user_task).permit(:description, :state)
    end
end
