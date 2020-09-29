def nyc_pigeon_organizer(data)
  # write your code here!
  
  new = {}
  data.each do |bigsection|
    bigsection.each do |section|
      new.each do |name|
        if section != name
          new << section.to_sym
        end
      end
    end
  end
  
  c = 0
  new.each do |key|
    name = key.to_s
    
    data.each do |category|
      arr = []
      sarr = []
      category.each do |type|
        type.each do |element|
          if element == name
            arr << category
            
          end
      end
      [new[c], arr].to_h
    end
    c += 1
    
  end
  
  
  
  
end
