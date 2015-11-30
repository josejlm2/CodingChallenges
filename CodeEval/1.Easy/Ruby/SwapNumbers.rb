File.open(ARGV[0]).each_line do |line|
    line.strip.split(' ').each do |t| 
      a = t.split('')
      print  a.last + /\D+/.match(t).to_s + a.first + " "
    end
    puts ""
end