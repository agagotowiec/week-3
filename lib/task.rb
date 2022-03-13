class Todo2
  def initialize(task) # task is a string
 @task = task
 @done = false
  end

  def task
    if @task.empty?
      "Please provide a task"
    else
    @task
  end
end

  def mark_done!
   @done = true
  end

  def done?
    @done
  end
end