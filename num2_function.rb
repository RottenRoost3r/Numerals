class String

    def de_romanizer()
        numbers = {
            'X' => 10,
            'IV' => 4,
            'V' => 5,
            'I' => 1
        }
        result = 0
        x = self
        numbers.each do |key, value|
            result += value * (x.scan(/#{key}/).count)
            temp = [key]
            temp.each {|v| x.sub!(v, '')}
        end
        return result
    end
end