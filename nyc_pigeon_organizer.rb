def nyc_pigeon_organizer(data)
  # write your code here!
  
  new = {}
  data.each do |category|
    category.each do |type|
      type.each do |element|  
        new.each do |name|
          if element != name
            new << element.to_sym
          end
        end
      end
    end
  end
  
  c = 0
  new.each do |key|
    name = key.to_s
    
    data.each do |category|
      arr = []
      tarr = []
      category.each do |type|
        type.each do |element|
          if element == name
            arr << category
            tarr << type
          end
        end
      end
      [new[c], arr].to_h
    end
    c += 1
    
  end
  
  
  
  
end
