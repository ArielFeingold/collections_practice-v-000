

def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  rev_array = array.sort
  rev_array.reverse
end

def sort_array_char_count(array)
  array.sort do |string, next_string|
    if string.length == next_string.length
      0
    elsif string.length < next_string.length
      -1
    elsif string.length > next_string.length
        +1
    end
  end
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def reverse_array(array)
  rev_array = []
  array.each_with_index do |number, i|
    number = array[array.length - i - 1]
    rev_array << number
  end
  rev_array
end

def kesha_maker(strings)
  strings.collect do |name|
    name_array = name.split(//)
    name_array.delete_at(2)
    name_array.insert(2, '$')
    name = name_array.join
  end
end

def find_a(array)
  array.select do |string|
    string.start_with?("a")
  end
end

def sum_array(array)
array.inject { |sum, n| sum + n }
end

def add_s(array)
  array.each_with_index.collect do |string, i|
    if string[i] = 2
      string
    else string = "#{string}s"
    end
  end
end
