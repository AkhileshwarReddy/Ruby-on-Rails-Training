class CArray < Array
    def c_map
        result = []
        self.each do |x|
           result << yield(x) 
        end
        result
    end
end

arr = CArray[1,2,3,4,5,6,7,8,9]
puts arr.c_map { |x| x*3 }
