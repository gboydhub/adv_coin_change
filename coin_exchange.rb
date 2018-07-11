def coin_exchange(cents)
  coins_back = {}
  while cents > 0 do
    if cents >= 25
      cents -= 25
      # Pluralization code
      if !coins_back[:quarter] && !coins_back[:quarters]
        coins_back[:quarter] = 1
      elsif coins_back[:quarter]
        coins_back.delete(:quarter)
        coins_back[:quarters] = 2
      else
        coins_back[:quarters] += 1
      end

    elsif cents >= 10
      cents -= 10
      # Pluralization code
      if !coins_back[:dime] && !coins_back[:dimes]
        coins_back[:dime] = 1
      elsif coins_back[:dime]
        coins_back.delete(:dime)
        coins_back[:dimes] = 2
      else
        coins_back[:dimes] += 1
      end

    elsif cents >= 5
      cents -= 5
      # Pluralization code
      if !coins_back[:nickel] && !coins_back[:nickels]
        coins_back[:nickel] = 1
      elsif coins_back[:nickel]
        coins_back.delete(:nickel)
        coins_back[:nickels] = 2
      else
        coins_back[:nickels] += 1
      end
      
    elsif cents >= 1
      cents -= 1
      # Pluralization code
      if !coins_back[:penny] && !coins_back[:pennies]
        coins_back[:penny] = 1
      elsif coins_back[:penny]
        coins_back.delete(:penny)
        coins_back[:pennies] = 2
      else
        coins_back[:pennies] += 1
      end
    end
  end

  coins_back
end