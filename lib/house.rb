class House
    attr_reader :price, :address, :rooms, :details
    #attr__accessor :
       def initialize(price, address)
        @price = price
        @address = address
        @rooms = []
				@details = {"price" => @price.delete("$").to_i, "address" => @address}
       end  

       def add_room(room)
        @rooms << room
       end

			 def above_market_average?
				@price.delete("$").to_i > 500000
			 end

			 def rooms_from_category(cat)
				arr = []
				rooms.each do |i| 
					if i.category == cat 
						arr << i
					end
				end
				arr
			 end

			 def area
				@rooms.reduce(0){ |sum, i| sum + i.area }
			 end

			 def price_per_square_foot
				price = @price.delete("$").to_i 
				(price/area.to_f).round(2)
			 end
   
   end