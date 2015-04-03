module Enumerable

	def my_all?
		result = self.to_a.select do |arg|
			if block_given?
				yield arg
			else
				arg
			end
		end
			return false if result.length < self.length
			return true
	end
end
