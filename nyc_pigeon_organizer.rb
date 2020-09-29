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
    arr = []
    data.each do |category|
      i = 0
      tarr = []
      category.each do |type|
        type.each do |element|
          if element == name
            arr << category.to_sym
            tarr << type
          end
        end
      end
      [arr[i], tarr].to_h
      i += 1
    end
    [new[c], arr].to_h
    c += 1
  end
  
  
  
  
end
