class StringCalculator
    def self.add(input)
      return 0 if input.empty?
      
      delimiter = ','
      numbers = input

      if input.start_with?('//')
        delimiter = input[2]
        numbers = input.split("\n", 2)[1]
      end

      numbers = numbers.gsub("\n", delimiter)
                      .split(delimiter)
                      .map(&:to_i)

      negatives = numbers.select { |n| n < 0 }
      if negatives.any?
        raise "negative numbers not allowed: #{negatives.join(', ')}"
      end

      numbers.reject { |n| n > 1000 }
             .sum
    end
end