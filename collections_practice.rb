
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

  until i ==
    swapped_array << array[i]
    i += 1
  end

  i = index_1 + 1
  swapped_array << array[index_2]
  until i == index_2
    swapped_array << array[i]
    i += 1
  end

  i = index_2 + 1
  swapped_array << array[index_1]
  until i == array.length
    swapped_array << array[i]
    i += 1
  end
  swapped_array
end
