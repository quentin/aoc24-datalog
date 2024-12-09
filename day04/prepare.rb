f = File.open("input.facts", "w")
File.new("input", "r").readlines.each_with_index do |line, idx|
  line.chomp!
  f.puts "%i %s" % [idx, line]
end

