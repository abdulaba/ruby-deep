begin
  File.open("test.txt")
rescue Errno::ENOENT => e
  puts 'Archivo no se encuentra'
  p e.message
  p e.backtrace
end
  exit!
