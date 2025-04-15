class StringCalculator
    def self.add(input)
      return 0 if input.empty?
      
      input.gsub("\n", ",")
           .split(",")
           .map(&:to_i)
           .sum
    end
end