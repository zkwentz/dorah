class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tasks = Task.all
    render json: @tasks, each_serializer: TaskSerializer
  end

  def show
    render json: @task
  end

  def new
    @task = Task.new
    render json: @task
  end

  def edit
  end

  def create
    @task = Task.new(task_params)
    @task.save
    render json: @task
  end

  def update
    @task.update(task_params)
    render json: @task
  end

  def destroy
    @task.destroy
    render json: @task
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params[:task]
    end
end
