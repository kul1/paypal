#./lib/main_process.rb
require './lib/transac.rb'

def main_process(afile)
  group_lines_array = []
  @valid_card = []
  @invalid_card = []

  File.open(afile).each do |line|
    line_array = line.split(' ')
    group_lines_array.push(line_array)
  end

  group_lines_array.each do |aline|
    case aline[0]
    when "Add"
      if credit_card_valid?(aline[2])
        @valid_card.push(aline)
      else
        aline[3] = "error"
        @invalid_card.push(aline)
      end
    when "Charge"
      transac("Charge", @valid_card, aline)
    when "Credit"
      transac("Credit", @valid_card, aline)
    else
    end #when
  end # group_line_array
  processed_card = @valid_card.push(*@invalid_card).sort_by{ |p| p[1]}
  @processed = ""
  processed_card.each do |card|
    puts card[1]+":"+card[3]	
    @processed += card[1]+": "+card[3]+"\n"
  end
  return @processed
end
