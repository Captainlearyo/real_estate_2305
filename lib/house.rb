class House
    attr_reader :price, :address, :rooms
    #attr__accessor :
       def initialize(price, address)
        @price = price
        @address = address
        @rooms = []
       end  

       def add_room(room)
        @rooms << room
       end
			 def above_market_average?
				@price.delete("$").to_i > 500000
			 end
   
   end