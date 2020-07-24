def fibs(n, ary)
  0.upto(n) do |i|
    ary.push(0) if i == 0
    ary.push(1) if i == 1
    ary.push(ary[i - 1] + ary[i - 2]) if i > 1
  end
  ary
end

def fibs_rec(n)
  return [0] if n ==0
  return [0,1] if n == 1
  fibs_rec(n - 1) << fibs_rec(n - 1)[-1] + fibs_rec(n - 1)[-2]
end
