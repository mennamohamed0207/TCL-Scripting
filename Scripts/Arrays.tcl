#!/usr/bin/env tclsh
if 0 {
Arrays are like hash map 
- it is limited and can't have multiple levels of arrays 
- most commands use the variable its self not the value
}

# Create Enteries in array

#1. 
set color(sky) blue
set color(cloud) white
set color(sun) yellow
set color(moon) black
# using array names
foreach item [array names color] {
    puts "The color $item is $color($item)"
}

#2. using array set command
array set food "key1 value1 key2 value2 key3 value3"
foreach item [array names food] {
    puts "The food $item is $food($item)"
}


#Convert array to string(list) 
puts "the array is [array get color]"


# Get length of array
puts "the length of array is [array size color]"

if { [array exists color] } {
puts "the array color exists "
} elseif {[array exists color2]} {
puts "the array color2 exists "
} else {
puts "the array color3 exists "
}

# Checking if there is specific key in array
if {[info exists color(cloud)]} {
puts "the array color(cloud) exists "
}


# Get something at specific index
puts "the value at index 1 is [array get color cloud]"
# Multidimensional Arrays
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Multidimensional Arrays~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
set arr(1,1) item1
set arr(1,2) item2
set arr(1,3) item3
set arr(2,1) item4
set arr(2,2) item5
set arr(2,3) item6
puts "[array names arr]"
foreach row [array names arr] {
    puts "array at row $row is $arr($row)"
}

#Another way to access the elements 

foreach row [array names arr] {
    puts "array at row $row is [array get arr $row]"
}

