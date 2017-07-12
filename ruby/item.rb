class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def update_item_quality
    update_item_quality_in_sell if @sell_in > 0
    update_item_quality_out_sell if @sell_in <= 0
  end

  def ageing
    @sell_in -= 1
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end

private

  def update_item_quality_in_sell
    if @name != "Sulfures"
      return @quality if @quality == 50
      @quality += 1
      @quality += 1 if @sell_in < 11
      @quality += 1 if @sell_in < 6
    end
  end

  def update_item_quality_out_sell
      @quality -= 2
  end

end
