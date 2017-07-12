class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def update_item_quality
    update_item_quality_high
  end

  def ageing
    @sell_in -= 1
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end

private

  def update_item_quality_high
    if sell_in > 0
      return @quality if @quality == 50
      @quality += 1 if @sell_in < 11
      @quality += 1 if @sell_in < 6
    end
  end


end
