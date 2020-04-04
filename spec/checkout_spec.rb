require 'checkout'

RSpec.describe Shop do
  subject(:shop) { described_class.new }

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

  it "#checkout takes ('AA') and returns 100" do
  expect(shop.checkout('AA')).to eq 100
  end

end
