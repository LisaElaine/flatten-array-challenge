def flatten_array(array)
  if array.is_a?(Array) # validates that argument passed is an Array
    f_array = array.flatten
    f_array.all? { |i| i.is_a?(Integer) } ? f_array : false # validate contains integers only
  else
    'argument passed is not an array'
  end
end
