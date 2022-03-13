require 'task'
require 'todo_list'

RSpec.describe 'todo_integration' do
  it "adds todo to the todo list" do
  todolist = TodoList.new
  task = Todo2.new("wash your socks")
  expect(todolist.add(task)).to eq [task]
end
context "when we mark task as done" do
it "automatically appears in the complete list" do
  todolist = TodoList.new
  task1 = Todo2.new("wash your socks")
  task2 = Todo2.new("walk the dog")
  todolist.add(task1)
  todolist.add(task2)
  task1.mark_done!
  expect(todolist.complete).to eq [task1]
end
it "automatically disappears from the incomplete list" do
  todolist = TodoList.new
  task1 = Todo2.new("wash your socks")
  task2 = Todo2.new("walk the dog")
  todolist.add(task1)
  todolist.add(task2)
  task1.mark_done!
  expect(todolist.incomplete).to eq [task2]
end
it "when all todos has been done" do
  todolist = TodoList.new
  task1 = Todo2.new("wash your socks")
  task2 = Todo2.new("walk the dog")
  todolist.add(task1)
  todolist.add(task2)
  todolist.give_up!
  expect(todolist.complete).to eq [task1, task2]
end
end
end