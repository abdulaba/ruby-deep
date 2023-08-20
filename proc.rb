my_proc = Proc.new { |x| puts x }

t = Proc.new { |x,y| puts "I don't care about arguments!" }
# t.call

def call_proc
  puts "Before proc"
  my_proc = Proc.new { return 2 }
  my_proc.call
  puts "After proc"
end
# p call_proc

def call_proc(my_proc)
  count = 500
  my_proc.call
end

count = 1
my_proc = Proc.new { count }

# p call_proc(my_proc)

def to_proc(sym)
  Proc.new { |x| x.send(sym) }
end

p to_proc(:size).call("test")


