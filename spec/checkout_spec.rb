require 'checkout'

RSpec.describe Shop do
  it "#checkout takes ('A') and returns 50" do
    shop = Shop.new
    expect(shop.checkout('A')).to eq 50
  end
end
