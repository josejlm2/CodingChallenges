def	sortList(list)
	container = []
	list.split(" ").each{
		|x|
		container.push(x.to_f)
	}

	container.sort.each{
		|y|
		printf "%.3f ", y
	}
	puts ""
end

$line ="-38.797 7.581 14.354 70.920 90.374 99.323"
$line2 ="-55.552 -37.507 -3.263 27.999 40.079 65.213"
#File.open(ARGV[0]).each_line do |line|
    sortList($line)
    sortList($line2)
#end



