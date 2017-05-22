a = [9,8,6,1,2,5,4,3,9,50,12,11]
number_of_elements = a.size - 1
puts "Total number of elements #{number_of_elements}"

number_of_elements.times do |i|
  min_index = i
  i.next.upto(number_of_elements) do |j|
   a[i], a[j] = a[j], a[i] if  a[j] < a[i]
  end

end
puts a
