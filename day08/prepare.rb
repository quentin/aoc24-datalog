map = File.open("map.facts", "w")
File.new(ARGV[0] || "input", "r").readlines.each_with_index do |line, row|
  line.chomp.scan(/./).each_with_index do |char, col|
    map.puts "%i %i %s" % [row, col, char]
  end
end
