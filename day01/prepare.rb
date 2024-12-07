File.new("input", "r").readlines.each_with_index do |line, idx|
  line.chomp!
  m = line.match(/(\d+) +(\d+)/)
  lhs = m[1]
  rhs = m[2]
  STDOUT.puts "%i %s %s" % [idx, lhs, rhs]
end

