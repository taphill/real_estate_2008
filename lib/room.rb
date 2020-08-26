class Room
  attr_reader :category

  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width.to_i
    @is_painted = false
  end

  def area
    length * width
  end

  def is_painted?
    is_painted
  end

  def paint
    self.is_painted = true
  end

  private

  attr_accessor :is_painted
  attr_reader :length, :width
end