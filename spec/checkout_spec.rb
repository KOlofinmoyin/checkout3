require 'checkout'

RSpec.describe Shop do
  subject(:shop) { described_class.new }

  context "individual items" do
    it "#checkout takes ('A') and returns 50" do
      expect(shop.checkout('A')).to eq 50
    end

    it "#checkout takes ('B') and returns 30" do
      expect(shop.checkout('B')).to eq 30
    end

    it "#checkout takes ('C') and returns 20" do
      expect(shop.checkout('C')).to eq 20
    end

    it "#checkout takes ('D') and returns 15" do
    expect(shop.checkout('D')).to eq 15
    end
  end

  context "purchasing multiple items, without applying any discount" do
    it "#checkout takes ('AA') and returns 100" do
      expect(shop.checkout('AA')).to eq 100
    end

    it "#checkout takes ('CC') and returns 40" do
      expect(shop.checkout('CC')).to eq 40
    end

    it "#checkout takes ('ABCD') and returns 115" do
      expect(shop.checkout('ABCD')).to eq 115
    end

  end

  context "discounts" do
    it "#checkout takes ('AAA') and returns 130" do
      expect(shop.checkout('AAA')).to eq 130
    end

    it "#checkout takes ('AAABAAAAAC') and returns 410" do
      expect(shop.checkout('AAABAAAAAC')).to eq 410
    end

    it "#checkout takes ('AAAAAA') and returns 260" do
      expect(shop.checkout('AAAAAA')).to eq 260
    end

    it "#checkout takes ('BB') and returns 45" do
      expect(shop.checkout('BB')).to eq 45
    end

    it "#checkout takes ('AAABAAABABAC') and returns 455" do
      expect(shop.checkout('AAABAAABABAC')).to eq 455
    end
  end

end
