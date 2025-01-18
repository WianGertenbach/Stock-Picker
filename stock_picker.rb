stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(arr)
  max_profit = 0 
  min_price = Float::INFINITY
  best_pair = []
  buying_day = 0

  arr.each_with_index do |price, day|
    if price < min_price
      min_price = price
      buying_day = day
    elsif price - min_price > max_profit
      max_profit = price - min_price
      best_pair = [buying_day,day]
    end
  end
  best_pair
end

p stock_picker(stock_prices)