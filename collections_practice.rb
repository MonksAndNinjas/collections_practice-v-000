
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
  index = [index_1, index_2]
  a = index.sort{|a,b| a <=> b}[0]
  b = index.sort{|a,b| a <=> b}[1]

  swapped_array = []
  i = 0

  array.each {|value| swapped_array << value if i < a;
                      swapped_array << array[b] if i == a;
                      swapped_array << value if i > a and i < b;
                      swapped_array << array[a] if i == b;
                      swapped_array << value if i > b;
                      i += 1}
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

def sum_array(array)
  sum_of_array = 0
  array.each {|value| sum_of_array += value}
  sum_of_array
end

def add_s(array)
  i = 0
  array.each {|value| value << "s" if i = 1; i += 1 }
end
