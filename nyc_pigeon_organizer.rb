def nyc_pigeon_organizer(data)
  pigeon_data = {} #establishing a hash that
  data.each do |types, value| #we go through the types of pigeons 
  value.each do |differences, name|# then we go through the differences between the pigeons 
    name.each do |name| #iterate through the name & key
      if !pigeon_data[name] #create a pigeon value if there isn't any present  
        pigeon_data[name] = {} #we add it to the hash 
      end 
      if !pigeon_data[name][types] #create a attribute
        pigeon_data[name][types] = [] #we add it to the array 
      end 
      pigeon_data[name][types] << differences.to_s #we place the type inside it as a string  
    end 
  end 
end
return pigeon_data
  #will hold our pigeon information 
  # write your code here!
end
