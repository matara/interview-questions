# given a method which had for loop with 100,000 iteration   and calling it to some method with heavy call
# ( for that exercise they used sleep). all the results from the method call stored in array.
# how will you improve performance.

def run_something
  sleep 1
end

time = Time.now

threads = []
100.times do
  threads << Thread.new do
    run_something
  end
end

threads.each(&:join)

puts Time.now-time