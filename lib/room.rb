class Room
  attr_reader :category, :length, :width, :is_painted
  #attr__accessor :
  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width.to_i
    @is_painted = false

  end

  def area 
    @length * @width
  end

  def paint
    @is_painted = true
  end
end

