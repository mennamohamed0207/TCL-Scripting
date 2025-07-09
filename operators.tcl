#!/usr/bin/env tclsh
set a 2
set b 1
puts [expr $a|$b]


if {$a > $b } { # make sure to make space between braces !!!!
    puts "a is greater than b "
} elseif { $a== $b } {
    puts "a is equal to b "
} else {
puts "a is smaller than b" 
}

puts [expr $a+$b]
puts [expr $a-$b]
puts [expr $a*$b]
puts [expr $a/$b]
puts [expr $a%$b]
puts [expr $a**$b]



set colorslst {red green blue}
foreach {color} $colorslst {
    puts $color
}


set foodlst {apple banana orange}
for {set i 0 } {$i < [llength $foodlst]} {incr i} {
    puts "$i. [lindex $foodlst $i]"
}