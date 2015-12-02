File.open(ARGV[0]).each_line do |line|

    a = line.strip.split('')

    a.permutation.to_a.each_with_index do |v,i|
        a[i] = v.join
    end 

    print a.sort.join(",")
	puts ""
    
end