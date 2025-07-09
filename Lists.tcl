#!/usr/bin/env tclsh
if 0 {
There is three ways to create list
1. using [list element1 element2 element3]
2. using {element1 element2 element3}
3. using "element1 element2 element3"
the second way has limitation as it can not have list of values
Valid Examples
set mylist [list a b c]
set mylist {a b c}
set mylist "a b c"
---> the elements are separated by space
we can change the separator by using split like the following 
set mylist [split "a_b_c" "_"]
Invalid Examples
set mylist {$a $b $c}


--> to know the length of the list 
puts "[llength $mylist]"
--> to count the space as element
puts "[string length $mylist]"

}

set mylist [list a b c]
foreach {item} $mylist {
    puts $item
}



puts "-------------------------------------"
set list2 {1 2 3}
foreach item $list2 {
    puts $item
}

puts "-------------------------------------"
set list3 "1 2 3"
foreach item $list3 {
    puts $item
}

puts "-------------------------------------"
set list4 [split "1_2_3" "_"]
foreach item $list4 {
    puts $item
}

# to know the length of the list 
puts "the length of the list is [llength $mylist]"
puts "the length of the list with space is [string length $mylist]"