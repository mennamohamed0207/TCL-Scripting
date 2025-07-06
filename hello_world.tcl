#!/usr/bin/env tclsh
puts "Hello World!"
set a 22
set b 10
set c [expr $a+$b]
puts "value of c is $c"
# this is comment 
if {$a > $b } {
    puts "a is greater than b " ;# this is inline comment
} else {
    puts "b is greater than a"
}
unset a 
if {[info exists a ]} {
puts "a exists "
} else {
puts "a does not exist "
}