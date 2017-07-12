class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def update_item_quality
    return @quality if @quality == 50
    @quality += 1 if @sell_in < 11
    @quality += 1 if @sell_in < 6
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end


end
