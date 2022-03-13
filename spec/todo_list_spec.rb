require 'todo_list'

RSpec.describe TodoList do
  it "adds to-do to the list" do
    todolist = TodoList.new
   expect(todolist.add("play a game")).to eq ["play a game"]
  end
  it "asks for a todo if given an empty string" do
    todolist = TodoList.new
   expect(todolist.add("")).to eq "Please provide a task"
  end
end

