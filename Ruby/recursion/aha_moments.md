aha moments:

how to test a random number (test that it's in the right range, type)

neat ways to transform arrays of arrays (flatten, transpose, etc).  massaging data

%w(this is an array of strings) (w for strings, r for regex, i for symbols -- general delimiters)

%w(3 5 7 3).map(&:to_i)
# the above is shorthand for the below:
%w(3 5 7 3).map { |item| item.to_i }

a = %w(3 5 7 3)

b = a.map(&:to_i)


