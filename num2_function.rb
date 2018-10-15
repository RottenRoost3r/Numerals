class String

    def de_romanizer()
        numbers = {
            'I' => 1
        }
        result = 0
        x = self
        num_holder = []
        numbers.each do |key, value|
            result += value * (x.scan(/#{key}/).count)
            # temp = [key]
            # temp.each {|v| x.sub!(v, '')}
        end
        # num_holder.each {|v| result += v}
        return result
    end
end