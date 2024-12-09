rules = File.open("rules.facts", "w")
updates = File.open("updates.facts", "w")
File.new("input", "r").readlines.each_with_index do |line, idx|
  line.chomp!
  case line
  when /([0-9]+)\|([0-9]+)/
    rules.puts '%i %i' % [$1, $2]
  when /[0-9]+(,[0-9]+)+/
    line.split(/,/).each_with_index do |num, pos|
      updates.puts '%i %i %s' % [idx, pos, num]
    end
  end
end

