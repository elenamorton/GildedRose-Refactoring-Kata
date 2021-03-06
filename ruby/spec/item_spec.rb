require File.join(File.dirname(__FILE__), '../item')

describe Item do
  subject(:cheese) { described_class.new("Test Cheese", 15, 40) }
  subject(:cheese_out_sell) { described_class.new("Out of date Cheese", 0, 20) }
  subject(:cheese_sulfures) { described_class.new("Sulfures", 5, 40) }

  describe "#update_item_quality" do
    it 'can increase quality if in sell_in period ' do
      cheese.ageing
      cheese.update_item_quality
      expect(cheese.quality).to eq 41
    end

    it 'can increase quality if in sell_in period ' do
      10.times do
          cheese.ageing
          cheese.update_item_quality
      end
      expect(cheese.quality).to eq 50
    end

    it 'can decrease quality if out of sell_in period ' do
      cheese_out_sell.ageing
      cheese_out_sell.update_item_quality
      expect(cheese_out_sell.quality).to eq 18
    end

    it 'can decrease quality if out of sell_in period until it reaches 0' do
      11.times do
        cheese_out_sell.ageing
        cheese_out_sell.update_item_quality
      end
      expect(cheese_out_sell.quality).to eq 0
    end

  end

  it 'do not change the quality for aging Sulfures' do
    cheese_sulfures.ageing
    cheese_sulfures.update_item_quality
    expect(cheese_sulfures.quality).to eq 40
  end

end
