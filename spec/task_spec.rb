require 'task'

RSpec.describe Todo2 do
  it "asks for a string if an empty string had been given" do
    task = Todo2.new("")
    expect(task.task).to eq "Please provide a task"
end
  it "takes a task and returns it as a string" do
    task = Todo2.new("wash your socks")
    expect(task.task).to eq "wash your socks"
end
context "when todo has been done"
it "marks it as done" do
  task = Todo2.new("wash your socks")
  task.mark_done!
  expect(task.done?).to eq true
end
context "when todo has not been done yet"
it "returns false" do
  task = Todo2.new("wash your car")
  expect(task.done?).to eq false
end
end