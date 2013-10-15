class TasksController < ApplicationController

  def update
    task = Task.find(params[:id])
    task.done = !task.done

    task.save

    render nothing: true
  end

end