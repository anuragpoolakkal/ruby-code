class QueueWithStacks
	def initialize
		@stack1 = []
		@stack2 = []
	end

	def enqueue(value)
		@stack1.push(value)
	end

	def dequeue()
		if @stack2.empty?
			while !@stack1.empty?
				@stack2.push(@stack1.pop())
			end
		end
		return @stack2.pop() unless @stack2.empty?
		return "empty"
	end

	def display()
		@stack1.each do |item|
			puts item
		end
		@stack2.each do |item|
			puts item
		end
	end
end
		
q1 = QueueWithStacks.new
q1.enqueue(23)
q1.enqueue(42)
puts q1.dequeue()
puts q1.dequeue()
puts q1.dequeue()
q1.enqueue(37)
q1.display()
