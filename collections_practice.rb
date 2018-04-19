
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

  until i == a
    swapped_array << array[i]
    i += 1
  end

  i = a + 1
  swapped_array << array[b]
  until i == b
    swapped_array << array[i]
    i += 1
  end

  i = b + 1
  swapped_array << array[a]
  until i == array.length
    swapped_array << array[i]
    i += 1
  end
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
end
