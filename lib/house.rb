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

  private

  attr_writer :rooms
end