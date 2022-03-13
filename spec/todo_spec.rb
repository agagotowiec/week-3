
# As a user
# So that I can focus on tasks to complete
# I want to mark tasks as complete and have them disappear from the list.

require 'todo'

RSpec.describe Todo do
  it "adds todo to the list" do
  todo_list = Todo.new
  todo_list.add("wash your socks")
  expect(todo_list.list).to eq ["wash your socks"]
end
  context "when an empty string has been given" do
  it "asks user for the task" do
  todo_list = Todo.new
  expect(todo_list.add("")).to eq "Please provide your task"
end
end
context "when we complete the task" do
  it "removes the task from the list" do
  todo_list = Todo.new
 todo_list.add("wash your car")
todo_list.add("wash your socks")
  todo_list.complete("wash your car")
  expect(todo_list.list).to eq ["wash your socks"]
end
end
context "when we try to complete non-existent task" do
  it "fails" do
  todo_list = Todo.new
 todo_list.add("wash your car")
  expect { todo_list.complete("walk your dog") }.to raise_error "No such task"
end
end
end