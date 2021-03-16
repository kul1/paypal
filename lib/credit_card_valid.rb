#./lib/credit_card_valid.rb

def credit_card_valid?(account_number)
	digits = account_number.chars.map(&:to_i)
	check = digits.pop
	
	sum = digits.reverse.each_slice(2).flat_map do |x, y|
	  [(x * 2).divmod(10), y || 0]
	end.flatten.inject(:+)
	
	check.zero? ? sum % 10 == 0 : (10 - sum % 10) == check
end
