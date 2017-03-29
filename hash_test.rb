# Unexpected was asking me to reimplement a hash class with   arrays. Why would I ever do this?
# It's a base class with well understood functionality, and the actual implementation in any
# language would be highly optimized. I've heard the arguments about "testing the way you think about
# things" and I don't buy it, especially when you only have 50 minutes to do it. What about testing
# the way I'd actually write code every day?

class Hashh

  attr_accessor :storage
  attr_accessor :keys

  def initialize
    @storage = []
    @keys = []
  end

  def [](key)
    @storage[index_of_key(key)]
  end

  def []=(key, value)
    keys.push(key)
    @storage[index_of_key(key)] = value
  end

  def index_of_key(key)
    key.to_s.split('').map(&:ord).inject(:+)
  end

  def keys
    @keys
  end

end

h = Hashh.new
h[:a] = 123
h[:b] = 333

p h.keys # => [:a, :b]
p h[:a] # => 123
p h[:b] # => 333
p h[:zzz] # => nil

