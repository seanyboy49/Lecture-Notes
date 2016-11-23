class NotANumberError < ArgumentError
end

def double_num(num)
  if num.class != Fixnum
    raise NotANumberError
  end
  num * 2
end


# def thing(num1, num2)
#   p yield
#   p num2 + num1
# end

# thing(23, 3) do
#   "hi"
# end



# begin
#   double("asd")
# rescue ArgumentError
#   p "uh oh"
# end
