require_relative './stack'

def balancing_parentheses(str)
    Stack.new

    left = []
    right = []

    str.chars.each do |char|
        if char == '('
            left << char
        elsif char == ')'
            right << char
        end
    end

    total = left.length - right.length

    if total < 0
        total * -1
    else
        total
    end
end
