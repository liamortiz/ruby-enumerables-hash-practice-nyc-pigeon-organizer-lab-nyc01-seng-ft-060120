def nyc_pigeon_organizer(data)
  sorted_hash = {} # Create an empty hash to return later on
  
  data.each do |parent_key, parent_value|
    parent_value.each do |child_key, child_value|
      child_value.each do |name| # Loop through all the names and values and assign
      
        if child_value.include?(name)
          if !sorted_hash[name] # Creates the name key object if it doesn't have one
            sorted_hash[name] = {parent_key => [child_key.to_s]}
  
          elsif !sorted_hash[name].key?(parent_key)
              # If the key is not set, add it with the first value
            sorted_hash[name][parent_key] = [child_key.to_s]
  
          else # Else if the key is found append to the current values of that key
            sorted_hash[name][parent_key] << child_key.to_s
          end
        end
      end
    end
  end
end