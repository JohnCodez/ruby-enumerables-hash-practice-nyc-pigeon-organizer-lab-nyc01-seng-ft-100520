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
  
  
  new.each do |key|
    c = 0
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
    arr.map {|x| x.to_sym }
    c += 1
  end
  
  
  
  
end
