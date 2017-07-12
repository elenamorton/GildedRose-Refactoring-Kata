require File.join(File.dirname(__FILE__), '../item')

describe Item do
  subject(:cheese) { described_class.new("Test Cheese", 5, 60) }

  describe "#update_item_quality" do
    it 'can increase quality if in sell_in period ' do
      cheese.update_item_quality
      expect(cheese.quality).to eq 62
    end


  end

end
