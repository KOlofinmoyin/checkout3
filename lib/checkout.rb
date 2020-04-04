class Shop
  def checkout(basket)
    basket == 'A' ? 50 : basket == 'B' ? 30 : basket == 'C' ? 20 : 15
  end
end
