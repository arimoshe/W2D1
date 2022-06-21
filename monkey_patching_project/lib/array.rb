# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
       self.empty? ? nil : self.max - self.min
    end

    def average
        if  !self.empty?
            self.sum / self.length.to_f
        else
            nil
        end
    end

    def median

        if self.length.odd?
            self.sort[(self.length/2).ceil]
        elsif self.length > 0
            ((self.sort[self.length/2] +  self.sort[(self.length/2)-1]))/ 2.0
        else 
            nil
        end
    end

    def counts
        self.tally
    end

    def my_count(arg)
        counter=0
        self.each { |ele| counter += 1 if arg == ele}
        counter
    end 

    def my_index(arg)
        self.each_with_index { |ele,i| return i  if ele == arg}
       return nil
    end

    def my_uniq
        self | self
    end

    def my_transpose
        out= Array.new(self.length) {Array.new(self.length)}
        (0...self.length).each { |i| (0...self.length).each { |j| out[j][i] = self[i][j]    }}
        out
    end

end
