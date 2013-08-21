
class Queue
	def initialize(elements) 
		@elements = elements
	end
		
	def pop(*i)
		# delete the first i number of elements in the @elements array
	
		
		return @elements.delete_at(0) if i == []
		# p i
		# p i.class
		# p @elements
		newarray=[]
		i[0].times do |number|
			newarray << @elements.delete_at(0)	
		end
		# return those deleted elements
		return newarray
	end
	
	def push(array)
		@elements = @elements + array
		# @elements << array
		return true
	end

	def to_a
		@elements
	end


end

queue = Queue.new([5, 6, 7, 8])
p queue.pop   			#5
p queue.pop				#6
p queue.push([4,2])		#true
p queue.pop(2)			#[7,8]
p queue.to_a # [4, 2]
#p queue.to_a




