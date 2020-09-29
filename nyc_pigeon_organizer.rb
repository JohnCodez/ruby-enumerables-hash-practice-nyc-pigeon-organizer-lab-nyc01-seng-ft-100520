def nyc_pigeon_organizer(data)
  # write your code here!
  
  new = {}
  data.each do |bigsection|
    bigsection.each do |section|
      section.find do |name|
        if name != new
          new << name.to_sym
        end
      end
    end
  end
  
  c = 1
  new.each do |key|
    name = key.to_s
    
    data.each do |bigsection|
      arr = []
      bigsection.each do |section|
        if section == name
          arr << bigsection.to_sym
          
        
      end
    end
    
  end
  
  
  
  
end
