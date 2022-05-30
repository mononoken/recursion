def fibs(length)
  fib_array = []
  length.times do
    if fib_array.length == 0
      fib_array << 0
    elsif fib_array.length == 1
      fib_array << 1
    else
      fib_array << fib_array[-1] + fib_array[-2]
    end
  end
  fib_array
end

def fibs_rec(length)

end
