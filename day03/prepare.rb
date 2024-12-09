f = File.open("input.facts", "w")
f.puts '"%s"' % [File.new("input", "r").readlines.join.gsub('"','""')]
