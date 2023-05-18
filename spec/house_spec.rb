require './lib/house'
require './lib/room'

RSpec.describe House do
  describe "House" do
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

    it "above_market_average? " do
      house_1 = House.new("$400000", "123 sugar lane")
      house_2 = House.new("$500001", "123 sugar lane")
      expect(house_1.above_market_average?).to be false
      expect(house_2.above_market_average?).to be true
    end

    it "rooms_from_category " do

      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15') 
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')

      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

     expect(house.rooms_from_category(:bedroom)).to eq([room_1, room_2])
     expect(house.rooms_from_category(:basement)).to eq([room_4])
    end

    it "house.area" do

      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15') 
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')

      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

     expect(house.area).to eq (1900)
    end

    it "house.details" do

      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15') 
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')

      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

     expect(house.details).to eq ({"price" => 400000, "address" => "123 sugar lane"})
    end

    it "price_per_square_foot" do

      house = House.new("$400000", "123 sugar lane")
      room_1 = Room.new(:bedroom, 10, '13')
      room_2 = Room.new(:bedroom, 11, '15') 
      room_3 = Room.new(:living_room, 25, '15')
      room_4 = Room.new(:basement, 30, '41')

      house.add_room(room_1)
      house.add_room(room_2)
      house.add_room(room_3)
      house.add_room(room_4)

     expect(house.price_per_square_foot).to eq (210.53)
    end


  
  end
end
