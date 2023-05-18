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
   
   end