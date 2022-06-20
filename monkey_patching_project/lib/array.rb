# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
       self.empty? ? nil : self.max - self.min
    end

    def average
        if  !self.empty?
            self.sum / (self.length * 1.0)
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

end
