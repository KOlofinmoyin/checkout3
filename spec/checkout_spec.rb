require 'checkout'

RSpec.describe Shop do
  it "#checkout takes ('A') and returns 50" do
    shop = Shop.new
    expect(shop.checkout('A')).to eq 50
  end

  it "#checkout takes ('B') and returns 30" do
    shop = Shop.new
    expect(shop.checkout('B')).to eq 30
  end

  it "#checkout takes ('C') and returns 20" do
    shop = Shop.new
    expect(shop.checkout('C')).to eq 20
  end

  it "#checkout takes ('D') and returns 15" do
  shop = Shop.new
  expect(shop.checkout('D')).to eq 15
  end
  
end
