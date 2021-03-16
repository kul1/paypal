#./lib/main_process.rb

def main_process(afile)
  group_lines_array = []
  valid_card = []
  invalid_card = []

  File.open(afile).each do |line|
    line_array = line.split(' ')
    group_lines_array.push(line_array)
  end

  group_lines_array.each do |aline|
    case aline[0]
    when "Add"
      if credit_card_valid?(aline[2])
        valid_card.push(aline)
      else
        aline[3] = "error"
        invalid_card.push(aline)
      end
    when "Charge"
      unless valid_card.empty? 
        valid_card.each do |valid|
          if valid.include?(aline[1]) 
            nvalid3 = valid[3].delete("^0-9").to_i-aline[2].delete("^0-9").to_i
            valid[3]= "$"+nvalid3.to_s
          end
        end
      end
    when "Credit"
      unless valid_card.empty? 
        valid_card.each do |valid|
          if valid.include?(aline[1]) 
            nvalid3 = valid[3].delete("^0-9").to_i+aline[2].delete("^0-9").to_i
            valid[3]= "$"+nvalid3.to_s
          end
        end
      end
    else
    end #when
  end # group_line_array
  processed_card = valid_card.push(*invalid_card).sort_by{ |p| p[1]}
  @processed = ""
  processed_card.each do |card|
    puts card[1]+":"+card[3]	
    @processed += card[1]+": "+card[3]+"\n"
  end
  return @processed
end
