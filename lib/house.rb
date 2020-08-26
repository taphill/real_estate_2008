class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price.sub('$', '').to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    self.rooms << room
  end

  def above_market_average?
    price > 500_000
  end

  def rooms_from_category(room_type)
    rooms.find_all do |room|
      room.category == room_type
    end
  end

  def area
    total_area = 0
    rooms.each do |room|
      total_area += room.area
    end
  
    total_area
  end

  def details
    details = {}
    details['price'] = price
    details['address'] = address

    return details
  end

  def price_per_sqaure_foot
    (price.to_f / area.to_f).round(2)
  end

  private

  attr_writer :rooms
end
