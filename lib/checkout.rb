class Shop

  def checkout(basket)
      @total ||= 0
      @discount_A ||= 0

    basket.each_char { |item|
        items ={
          'A': 50,
          'B': 30,
          'C': 20,
          'D': 15
        }
      @total += (items[item.to_sym] - @discount_A)
    }
    @discount_A = (basket.count('A') / 3) * 20
    @total -= @discount_A
  end
end
