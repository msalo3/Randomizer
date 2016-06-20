def randomize_students
  contents = File.read('NameList.txt')
  file_array=contents.split(" ")
  total=file_array.length

  rnd_groups=Array.new(total)
  l=file_array.length
  (0..total).each do |i|
    number=rand(l)
    rnd_groups[i]=file_array[number]
    file_array.delete_at(number)
    l-=1
  end
  rnd_groups
end

def amount_in_groups
  loop=true
  system "clear"
  while loop
    puts "How many people per group? (up to 9)"
    response=gets.to_i
    if response>9
      puts "That number isn't optimal for the amount of people we have"
    else
      loop=false
      return response
    end
  end
end


def print_groups(number, rnd_groups)
  if number==1
    groups=17
    puts "You really need this program to do this?!!?"
    sleep (1)
    puts "Fine. Calculating..."
    sleep (0.5)
    print "\nPreparing Files..."
    sleep (0.5)
    print "."
    sleep (0.5)
    print "."
    sleep (0.5)
    print "."
    sleep (0.5)
    print "\nSyncing with the Cloud."
    sleep (0.5)
    print "."
    sleep (0.5)
    print "."
    sleep (0.5)
    print "."
    print "\nDoing difficult math that humans cannot do."
    sleep (0.75)
    print "."
    sleep (0.75)
    print "."
    sleep (0.75)
    print "."
    sleep (0.75)
    print "."
    sleep (0.75)
    print "."
  end
  if number==2
    groups=8
  end
  if number==3
    groups=6
  end
  if number==4
    groups=4
  end
  if number==5
    groups=3
  end
  if number==6
    number=5
    groups=3
  end
  if number==7
    groups=3
  end
  if number==8
    groups=2
  end
  if number==9
    number=8
    groups=2
  end
  ticker=0
  (1..groups).each do |j|
    puts "Group #{j}\n"
    (1..number).each do |i|
      if ticker<17
        puts "\t- #{rnd_groups[ticker]}"
      end
      ticker+=1
    end
    if number==5&&j==2
      puts "\t- #{rnd_groups[16]}"
    end
    if number==5&&j==3
      puts "\t- #{rnd_groups[15]}"
    end
  end
  if number==2||number==4||number==8
    puts "\t- #{rnd_groups[16]}"
  end
  puts
end

print_groups(amount_in_groups, randomize_students)
