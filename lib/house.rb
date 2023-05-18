class House
    attr_reader :address, :rooms
    def initialize(price, address)
        @price = price
        @address = address
        @rooms = []
    end

    def price
        @price.delete("$").to_i
    end

    def add_room(room)
        @rooms << room
    end

    def above_market_average?
        # if @price.to_i > 500000
        #     true
        # else
        #     false
        # end
        price > 500000
    end

    def rooms_from_category(category)
        @rooms.select { |room| room.category == category }
    end

    def area
        # @rooms.sum { |room| room.length * room.width.to_i }
        @rooms.sum do |room|
            room.area
        end
    end

    def details
        {"price" => price, "address" => @address}
    end
end
