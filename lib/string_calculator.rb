class StringCalculator
    def self.add(input)
      return 0 if input.empty?
      
      delimiter = ','
      numbers = input

      if input.start_with?('//')
        delimiter = input[2]
        numbers = input.split("\n", 2)[1]
      end

      numbers.gsub("\n", delimiter)
             .split(delimiter)
             .map(&:to_i)
             .sum
    end
end