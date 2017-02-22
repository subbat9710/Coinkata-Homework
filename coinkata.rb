def coin_change(amount)
	  change = {}
    {:quarter => 25, :dime => 10, :nickel => 5, :penny => 1}.each do |coin, value|
        change[coin] = 0 if amount >= value
        (amount -= value; change[coin] += 1) while amount >= value
    end
    return change
end