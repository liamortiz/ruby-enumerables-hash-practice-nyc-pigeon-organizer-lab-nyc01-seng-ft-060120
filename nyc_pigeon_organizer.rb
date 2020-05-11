def nyc_pigeon_organizer(data)
  sorted_hash = {} # Create an empty hash to return later
  
  data.each do |parent_key, parent_value|
    parent_value.each do |child_key, child_value|
      child_value.each do |name|
        
        # This is our main block where the data gets sorted
        if child_value.include?(name)
          if not sorted_hash[name]
            # The object with the name key is not found, make one.
            sorted_hash[name] = {parent_key => [child_key.to_s]}
            
          elsif not sorted_hash[name].key?(parent_key)
            # The name key is not in the object/hash, make one.
            sorted_hash[name][parent_key] = [child_key.to_s]
            
          else
            # Object/hash already made and contains current values, update them.
            sorted_hash[name][parent_key] << child_key.to_s
          end
        end
      end
    end
  end
  return sorted_hash
end