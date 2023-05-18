require './lib/room'
require './lib/house'

RSpec.describe House do
    it "exists" do
        house = House.new("$400000", "123 sugar lane")
        house_price = house.price
        house.address
        house.rooms
        expect(house).to be_a(House)
        expect(house_price).to eq(400000)
        expect(house.address).to eq("123 sugar lane")
        expect(house.rooms).to eq([])
    end

    it "can add rooms" do
        house = House.new("$400000", "123 sugar lane")
        room_1 = Room.new(:bedroom, 10, '13')
        room_2 = Room.new(:bedroom, 11, '15')
        house.add_room(room_1)
        house.add_room(room_2)
        expect(house.rooms).to eq([room_1, room_2])
    end
end