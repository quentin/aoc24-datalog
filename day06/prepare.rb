map = File.open("map.facts", "w")
File.new("input", "r").readlines.each_with_index do |line, idx|
  map.puts '%i %s' % [idx, line]
end

