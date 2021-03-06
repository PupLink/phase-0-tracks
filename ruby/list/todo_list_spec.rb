# require_relative 'List'

# describe List do
#   let(:list) { List.new }

#   it "stores the list items given on initialization" do
#     puts list.inspect
#     expect(List.get_items).to eq ["do the dishes", "mow the lawn"]
#   end

#   it "adds an item to the list" do
#     puts list.inspect
#     list.add_item("mop")
#     expect(List.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
#   end

#   it "deletes an item" do
#     puts list.inspect
#     list.delete_item("do the dishes")
#     expect(List.get_items).to eq ["mow the lawn"]
#   end

#   it "retrieves an item by index" do
#     expect(List.get_item(0)).to eq ["do the dishes"]
#   end
# end

require_relative 'List'

describe List do
  let(:list) { List.new }

  it "stores the list items given on initialization" do
    expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  end

   it "adds an item to the list" do
    list.add_item("mop")
    expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(list.get_items).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    expect(list.get_item(0)).to eq ["do the dishes"]
  end
end