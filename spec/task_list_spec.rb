require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour
    describe "#all" do
        it "returns all tasks as strings" do
            task_list = TaskList.new
            task_list.add("walk the dog")
            task_list.add("walk the cat")
            expect(task_list.all).to eq ["walk the dog", "walk the cat"]
        end
    end
end