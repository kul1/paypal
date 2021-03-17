#./lib/transac.rb
def transac(type,vcard, aline)
      unless vcard.empty? 
        vcard.each do |valid|
          if valid.include?(aline[1]) 
            if type == "Charge"
              nvalid3 = valid[3].delete("^0-9").to_i-aline[2].delete("^0-9").to_i
            elsif type == "Credit"
              nvalid3 = valid[3].delete("^0-9").to_i+aline[2].delete("^0-9").to_i
            end
            valid[3]= "$"+nvalid3.to_s
          end
        end
      end
end
