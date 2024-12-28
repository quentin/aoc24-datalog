eqs = File.open("equations.facts", "w")
ops = File.open("operands.facts", "w")
File.new(ARGV[0] || "input", "r").readlines.each_with_index do |line, idx|
  result, operands = line.split(": ")
  operands.scan(/\d+/).each_with_index do |operand, pos|
    ops.puts "%i %i %s" % [idx, pos, operand]
  end
  eqs.puts '%i %s' % [idx, result]
end

