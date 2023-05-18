require './lib/house'
require './lib/room'

RSpec.describe House do
  describe "Iteration 2" do
    it "exists" do
      house = House.new("$400000", "123 sugar lane")
      expect(house).to be_a House
    end

    it "it has a price" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.price).to eq("$400000")
    end

		it "it has an address" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.address).to eq("123 sugar lane")
    end

		it "it has rooms array" do
      house = House.new("$400000", "123 sugar lane")
      expect(house.rooms).to eq([])
    end

		it "it can add rooms " do
      house = House.new("$400000", "123 sugar lane")
			room_1 = Room.new(:bedroom, 10, '13')
			room_2 = Room.new(:bedroom, 11, '15') 
      expect(house.rooms).to eq([])
			house.add_room(room_1)
			house.add_room(room_2)
			expect(house.rooms).to eq([room_1, room_2])
    end

  
  end
end
