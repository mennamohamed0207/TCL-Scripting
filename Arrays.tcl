#!/usr/bin/env tclsh

set color(sky) blue
set color(cloud) white
set color(sun) yellow
set color(moon) black

foreach item [array names color] {
    puts "The color $item is $color($item)"
}


#Convert array to string(list) 
puts "the array is [array get color]"

puts "the length of array is [array size color]"