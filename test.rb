def get_count(people)
	count = 0

	people.each_with_index do |person, index|
           
           if index == 0
            height =  people.max.to_i + 1
           else
            height = people[index - 1]
           end          
	   if  person < height
	    count = count.to_i + 1
	   end
	    
	end
	count
end


count = gets
people = gets
people = people.split(' ')

groups = 1

people = people.map {|x| x.to_i}

queue_count = people.size
people_sort = people.sort
peope_sort_reverse = people.sort.reverse

uniq_queue_count = people.uniq.size

if (people == people_sort || people == peope_sort_reverse) && queue_count != uniq_queue_count
  groups = uniq_queue_count
elsif people == people_sort && queue_count == uniq_queue_count
  groups = 1
elsif people == peope_sort_reverse && queue_count == uniq_queue_count
  groups = queue_count
else
  groups = get_count(people)
end


puts groups 
