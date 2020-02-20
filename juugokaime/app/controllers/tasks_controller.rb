class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # @tasks = current_user.tasks
  end
  def show
    # @task = Task.find(params[:id])
    @task = current_user.tasks.find(params[:id])
  end
  def new
    @task = Task.new
  end
  def edit
    # @task = Task.find(params[:id])
    @task = current_user.tasks.find(params[:id])
  end
  def update
    # task = Task.find(params[:id])
    @task = current_user.tasks.find(params[:id])
    task.name = params["tasks"]["name"]
    task.description = params["tasks"]["description"]
    task.save
    redirect_to"/", notice: "タスク「#{task.name}」を更新しました。"
  end
  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to"/", notice: "タスク「#{task.name}」を削除しました。"
  end
  def create
   task = Task.new(task_params)
   task.save!
   redirect_to tasks_url, notice: "お名前「#{params["task"]["name"]}」を登録しました。"
   # Task.create(name:params["tasks"]["name"], description:params["tasks"]["description"])
   # redirect_to"/", notice: "お名前「#{params["tasks"]["name"]}」を登録しました。"
  end

  private
  def task_params
    params.require(:task).permit(:name, :description)
  end
end