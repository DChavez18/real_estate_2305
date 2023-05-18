class House
    attr_reader :address, :rooms
    def initialize(price, address)
        @price = price
        @address = address
        @rooms = []
    end

    def price
        @price.gsub("$", "").to_i
    end

    def add_room(room)
        @rooms << room
    end

    def above_market_average?
        if @price.to_i > 500000
            true
        else
            false
        end
    end

    def rooms_from_category(category)
        @rooms.select { |room| room.category == category }
    end

    def area
        @rooms.sum { |room| room.length * room.width.to_i }
    end

    def details
        {"price" => 400000, "address" => "123 sugar lane"}
    end
end
