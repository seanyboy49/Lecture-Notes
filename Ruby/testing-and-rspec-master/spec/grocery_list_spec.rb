require_relative '../grocery_list'

describe GroceryList do

  let(:groceryList) { GroceryList.new }

  describe "#count" do
    it 'has 0 item to start' do
      expect(groceryList.count).to eq 0
    end

    it 'has 0 item to start' do
      groceryList.add_item("Tomatoes")
      expect(groceryList.count).to eq 1
    end

  end

end
