require File.join(File.dirname(__FILE__), '../item')

describe Item do
  subject(:cheese) { described_class.new("Test Cheese", 5, 30) }

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

end
