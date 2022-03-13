class Todo 
  def initialize
    @todo = []
  end

  def add(task)
    if task.empty?
    "Please provide your task"
    else  
      @todo << task
  end
end

def complete(task)
  fail "No such task" unless @todo.include? task
  @todo.delete(task)
end

  def list
   return @todo
  end

end