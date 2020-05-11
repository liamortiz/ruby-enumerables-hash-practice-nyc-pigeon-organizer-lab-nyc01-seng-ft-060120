def nyc_pigeon_organizer(data)
  sorted_hash = {} # Create an empty hash to return later on
  
  data.each do |parent_key, parent_value|
    parent_value.each do |child_key, child_value| #child_key = colors, genders, places , child_value = name arrays
  
      child_value.each do |pigeon_name| # For each name assign its value
        if child_value.include?(pigeon_name)
          if !sorted_hash[pigeon_name] # Creates the object if it doesn't already have one
            sorted_hash[pigeon_name] = {parent_key => [child_key.to_s]}
  
          elsif !sorted_hash[pigeon_name].key?(parent_key) # If the key is not set, add it with the first value
            sorted_hash[pigeon_name][parent_key] = [child_key.to_s]
  
          else # Else if the key is found append to the current values of that key
            sorted_hash[pigeon_name][parent_key] << child_key.to_s
          end
        end
      end
    end
  end
end