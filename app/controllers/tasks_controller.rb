class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def update
    @task_params = Task.find(params[:id])
    Task.update(@task_params)
  end

  def create
    @new_task = Task.create(title: params[:task][:title], description: params[:task][:description], done: params[:task][:done])
    redirect_to tasks_path
  end

  def destroy

  end
end

private
  #params checking
