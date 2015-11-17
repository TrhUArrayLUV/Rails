t = gets.to_i
   t.times{
       (his_money, price, wrappers) = gets.split.map{|i| i.to_i}
       answer = 0
      chocolates = (his_money/price).to_i
      #he has wrappers_left
      wrappers_left = chocolates

      while wrappers_left/wrappers >= 1
        promo = (wrappers_left/wrappers).to_i
        chocolates += promo
        rem_wrappers = wrappers_left%wrappers
        wrappers_left = promo + rem_wrappers
      end
       answer = chocolates
       puts answer.to_i
   }
