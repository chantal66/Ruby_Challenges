

input_array = ARGV

p input_array

def sum(input_array)
  input_array[0].to_i + input_array[2].to_i
end

def substract(input_array)
  input_array[0].to_i - input_array[2].to_i
end

def multiply(input_array)
  input_array[0].to_i * input_array[-1].to_i
end

def division(input_array)
  input_array[0].to_i / input_array[2].to_i
end

puts case
       when input_array[1] == '+' then sum(input_array)
       when input_array[1] == '-' then substract(input_array)
       when input_array[1].to_i.zero? then multiply(input_array)
       when input_array[1] == '/' then multiply(input_array)
       else
         "you didn't give a number"
     end
