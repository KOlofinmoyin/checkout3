class Shop

  def checkout(basket)
      @total ||= 0
      @discount_A ||= 0

    return -1 if !basket.is_a?(String)

    basket.each_char { |item|
        items ={
          'A': 50,
          'B': 30,
          'C': 20,
          'D': 15
        }
      return -1 if items[item.to_sym].nil?
      @total += (items[item.to_sym] - @discount_A)
    }

    @discount_A = (basket.count('A') / 3) * 20
    @discount_B = (basket.count('B') / 2) * 15
    @total -= (@discount_A + @discount_B)
  end
end
