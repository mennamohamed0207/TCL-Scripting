#!/usr/bin/env tclsh

dict set mydict key1 value1
dict set mydict key2 value2
dict set mydict key3 value3

set dict2 [dict create key1 value1 key2 value2 key3 value3]

foreach item [dict keys $mydict] {
    set value [dict get $mydict $item]
    puts "The value of $item is $value"
}

foreach item [dict keys $dict2] {
    set value [dict get $dict2 $item]
    puts "The value of $item is $value"
}

puts "The size of $mydict is [dict size $mydict]"
puts "The size of $dict2 is [dict size $dict2]"

puts "we can use lindex but it will be flattened like the index of [lindex $mydict 1] is 1"

puts "values of my dict is [dict values $mydict]"

if {[dict exists $mydict key1]} {
    puts "key1 exists"
} else {
    puts "key1 does not exist"
}

# Multilevel dictionaries

dict set multi_dict level0 {
level1 {nested_level1 value1 nested_level2 value2}
level2 value
}

puts "[dict get $multi_dict level0 level1 nested_level1] "
