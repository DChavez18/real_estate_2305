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
end