a = [9,8,6,1,2,5,4,3,9,50,12,11]
elements_count = a.count - 1
sorted = false

while sorted == false do
  sorted = true
  (elements_count).times do |i|
    if a[i+1] < a[i]
      a[i], a[i+1] = a[i+1], a[i]
      sorted = false 
    end 
  end
end
puts a
