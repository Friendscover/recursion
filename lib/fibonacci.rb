#usual loop
def fibs(n)
  fib1 = 0
  fib2 = 1
  sequence = [0, 1]
  i = 1

  while i < n
    temp = fib1 + fib2
    fib1 = fib2
    fib2 = temp

    sequence << temp

    i += 1
  end
  sequence.last
end

#recursion version
def fibs_rec(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fibs_rec(n - 1) + fibs_rec(n - 2)
  end
end

p fibs(5)
p fibs(6)
p fibs(20)
p fibs_rec(5)
p fibs_rec(6)
p fibs_rec(20)