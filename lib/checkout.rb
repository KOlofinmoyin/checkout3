class Shop
  def checkout(basket)
    basket == 'A' ? 50 : basket == 'B' ? 30 : 20
  end
end
