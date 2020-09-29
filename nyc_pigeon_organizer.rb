def nyc_pigeon_organizer(data)
  # write your code here!
  
  new = {}
  c = 1
  data.each do |section|
    section.find do |name|
      if name != new
        new << name.to_sym
        new[c] => 
      end
      c += 1
    end
  end
end
