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

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update!(task_prams)
    redirect_to"/", notice: "タスク「#{task.name}」を更新しました。"
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to"/", notice: "タスク「#{task.name}」を削除しました。"
  end

  def create
   Task.create(name:params["task"]["name"], description:params["task"]["description"])
   redirect_to"/", notice: "お名前「#{params["task"]["name"]}」を登録しました。"
  end
end

