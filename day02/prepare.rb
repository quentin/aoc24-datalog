File.new("input", "r").readlines.each_with_index do |report, idx|
  report.chomp!
  report.split(" ").each_with_index do |level, pos|
    # report index, level index, level value
    STDOUT.puts "%i %i %s" % [idx, pos, level]
  end
end

