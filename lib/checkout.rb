class Shop

  def checkout(basket)
      @total ||= 0

    basket.each_char { |item|
        items ={
          'A': 50,
          'B': 30,
          'C': 20,
          'D': 15
        }
      @total += items[item.to_sym]
    }
    @total
  end
end
