class TasksController < ApplicationController
  # As a user, I can list tasks (display all)
  # get "tasks", to: "tasks#index"
  # As a user, I can view the details of a task (find by id)
  # get "tasks/:id", to: "tasks#show", as: :task
  # As a user, I can add a new task (create)
  # get "tasks/new", to: "tasks#new",  as: :new_task
  # post "tasks", to: "tasks#create"
  # As a user, I can edit a task (mark as completed / update title & details) (update)
  # get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # patch "tasks/:id", to: "tasks#update"
  # As a user, I can remove a task (destroy)
  # delete "tasks/:id", to: "tasks#destroy"

  def index
    # First, add a new route to list the tasks, following the convention from the lecture.
    # Then, add a controller action and its view.
    # This action should fetch all tasks,
    # and a view should loop over these to display them,like in the screenshot below.
    @tasks = Task.all
    # Now we need to create a corresponding view page,
    # for the user to be able to see all the listed tasks.
  end

  def show
    @task = Task.find(params[:id])

  end

  def create
    @task = Task.new
    @task.save
    redirect_to task_path(@task)
  end
end
