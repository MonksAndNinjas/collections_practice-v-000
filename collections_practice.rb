
def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a, b|
   b <=> a
 end
end

def sort_array_char_count(array)
  array.sort do |a, b|
    a.length <=> b.length
  end
end

def swap_elements(array)
  array.sort do |a, b|
    if  a == array[1] && b == array[2]
      1
    else
      0
    end
  end
end

def swap_elements_from_to(array, index_1, index_2)
  if index_1 > index_2
    a = index_2
    b = index_1
  else
    a = index_1
    b = index_2
  end
  swapped_array = []
  i = 0

  array.each {|value| swapped_array << value and i += 1 if i < a }      # array.each |value| if i < a swapped_array << array[i] i+=1


  i = 0
  swapped_array << array[b]
  array.each {|value| swapped_array << value i += 1 if i > a and i < b 
    else
     i += 1
    end
  }

  i = 0
  swapped_array << array[a]    # array.each |value| if i > b swapped_array << array[i] i += 1.
  array.each {|value| swapped_array << value and i += 1 if i > b}
   swapped_array
end

def reverse_array(array)
  reversed_array = []
  array.each {|value| reversed_array.unshift(value)}
  reversed_array
end

def kesha_maker(array)
  array.each {|value| value[2] = "$" if value.length > 2}
end

def find_a(array)
  array.select{|value| value[0] == "a"}
end
