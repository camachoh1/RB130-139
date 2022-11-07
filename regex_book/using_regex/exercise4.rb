# Write a method that changes every arithmetich operator (+, -, *, /) to a '?' and returns the resulting string. Don't modify the original string.

def mysterious_math(operation)
  operation.gsub(/[+\-*\/]/, '?')
end
p mysterious_math('4 + 3 - 5 = 2')           # -> '4 ? 3 ? 5 = 2'
p mysterious_math('(4 * 3 + 2) / 7 - 1 = 1') # -> '(4 ? 3 ? 2) ? 7 ? 1 = 1'