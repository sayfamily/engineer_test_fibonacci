# from https://github.com/danh10010/fib/blob/master/lib/fib.rb

class Fixnum
  # return closest fibonacci number which is <= self
  # E.g. 256.closest_fibonacci => 233
  def closest_fibonacci
    if self < 0
      return nil
    elsif self <= 3
      return self
    end

    fib_n_2,fib_n_1,fib = 1,2,3
    while self >= fib
      fib = fib_n_1 + fib_n_2
      fib_n_2, fib_n_1 = fib_n_1, fib
    end
    fib_n_2
  end
end