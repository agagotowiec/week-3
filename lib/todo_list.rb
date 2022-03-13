class TodoList
  def initialize
    @todolist = []
  end

  def add(todo) 
    if todo == ""
      "Please provide a task"
    else
    @todolist << todo
  end
end

  def incomplete
   @todolist.reject do |todo|
    todo.done?
   end
  end

  def complete
   return @todolist.select do |todo|
    todo.done?
end
end


  def give_up!
    @todolist.each do |todo|
      todo.mark_done!
  end
end
end