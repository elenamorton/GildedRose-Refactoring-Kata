require File.join(File.dirname(__FILE__), '../item')

describe Item do
  subject(:cheese) { described_class.new("Test Cheese", 5, 30) }
  subject(:cheese_sulfures) { described_class.new("Sulfures", 5, 40) }

  describe "#update_item_quality" do
    it 'can increase quality if in sell_in period ' do
      cheese.update_item_quality
      expect(cheese.quality).to eq 32
    end

    it 'can increase quality if in sell_in period ' do
      21.times { cheese.update_item_quality }
      expect(cheese.quality).to eq 50
    end

  end

  it 'do not change the quality for aging Sulfures' do
    cheese_sulfures.ageing
    cheese_sulfures.update_item_quality
    expect(cheese_sulfures.quality).to eq 40
  end

end
