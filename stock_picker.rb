stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(arr)
  max_profit = 0
  min_price = Float::INFINITY
  best_days = []
  buy_day = 0

  arr.each_with_index do |current_price,day|
    if current_price < min_price
      min_price = current_price
      buy_day = day
      p "Buy day: #{buy_day}"
    elsif current_price - min_price > max_profit
      max_profit = current_price - min_price
      p "Max profit #{max_profit}" 
      p "Buy day: #{buy_day}"
      best_days = [buy_day, day] 
    end
  end
  best_days
end

p stock_picker(stock_prices)