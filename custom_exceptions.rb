

names_with_ages =
[
["john", 20],
["peter", 30],
["david", 40]
]

names_with_ages.each do |name,age|
  puts name + age.to_s.ljust(10)
end
