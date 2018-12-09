def begins_with_r(array)
  
  comparison_array = array.find_all  {|r_word|  r_word.start_with?("r")}
  if comparison_array == array
    return true 
  else 
    return false 
  end
end


def contain_a(array)
  array.select do |a_word|
   a_word.include?("a")
  end
end

def first_wa(array)
  array.delete_if {|wa_word| wa_word.class  == Symbol} 
  array.find {|wa_word| wa_word.start_with?("wa")}
end

def remove_non_strings(array)
   array.delete_if {|string_type| string_type.class  != String} 
end

def count_elements(array)
  unique_names = []
  unique_names = array.uniq
  i = 0
  count = 0
  unique_names.collect do |name|
    while i < array.length
      if name.eql?(array[i]) == true
        count += 1
      end 
     i += 1 
    end
  end
    
end
  

def merge_data(keys, data)
  
end