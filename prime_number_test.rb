# Given a number n - give me the first n prime numbers

class P

  attr_accessor :array

  def self.first(n)
    @array = []

    number = 0
    while @array.size < n
      number += 1
      @array.push number if is_prime?(number)
    end

    @array
  end

  def self.is_prime?(number)
    ('1' * number) !~ /^1?$|^(11+?)\1+$/

    # return false if number <= 1
    # Math.sqrt(number).to_i.downto(2).each {|i| return false if number % i == 0}
    # true
  end

end

n = 200

require 'prime'
p P.first(n) == Prime.first(n)


