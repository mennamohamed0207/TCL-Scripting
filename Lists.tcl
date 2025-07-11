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

# the use of curly braces
set a 1; set b 2; set c 3;
set list_test {$a $b $c}
foreach var $list_test {
    puts $var
}


# indexing the list 
set list5 [list a b c]
puts "the first element in list5 is [lindex $list5 0]"

# indexing using end

puts "the last element in list5 is [lindex $list5 end]"


#Adding Elements to list 

#1. using lappend (inset to the end of the list) --> modify the list

lappend list5 d
puts $list5

#2. using linsert (insert at speific index) --> doesn't modify the list
puts "using linsert"
linsert $list5 1 e
puts $list5

set list6 [linsert $list5 1 e]
puts $list6

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

#lreplace (replace subset of the list with new values)--> doesn't modify the list
set list7 [lreplace $list5 3 3 f]
puts $list7

# we can use it to delete elements from the list
set list8 [lreplace $list5 3 3]
puts $list8

#lrange (make a subset of the list)--> doesn't modify the list

set list9 [lrange $list5 1 3]
puts $list9

#lsort (sort the list)--> doesn't modify the list
set list10 [lsort -ascii $list5]
puts $list10

#lset (set(replace) element in the list)--> modify the list
lset list5 2 g
puts $list5

#lsearch (search for element in the list)--> doesn't modify the list
puts "g is at the index [lsearch $list5 g]"


puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

set multi_list [list 1 2 3 4 [list a b c]]
puts $multi_list
#index the outer loop first then the inner
puts "[lindex [ lindex $multi_list end] 1]"

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# Flattening the list 
#1.join (will remove the list of the next level and return a string with all values)
puts [join $multi_list]
#2. concat (concatenate the lists)
set list11 [list 1 2 3]
set list12 [list 4 5 6]
set list13 [concat $list11 $list12]
puts $list13
#3. lappend
lappend list11 {*}$list12
puts $list11

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
# Accessing list of variables
set a 1
set b 2
set c 3
set list_var {a b c}
# will print the name of variables not their values
foreach item $list_var {
    puts $item
}

#1. using upvar 
foreach item $list_var {
    upvar 0 $item value
    puts $value
}

#2. using set command

foreach item $list_var {
    puts "the value of $item is [set $item]"
}

#3. using eval 

foreach item $list_var {
    #eval permit the use of double dolar sign
    eval set x $$item
    puts "$item is $x"
}

#4. using $ in list

set list_var2 {$a $b $c}
foreach item $list_var2 {
    eval set x $item
    puts "$item is $x"
}

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

#lassign : unpack the list into variables

set list_var3 {a b c}
lassign $list_var3 x y z
puts "x is $x"
puts "y is $y"
puts "z is $z"
# putting too many elements will make empty string

lassign $list_var3 x y z w
puts "x is $x"
puts "y is $y"
puts "z is $z"
puts "w is $w"
# putting less variables will return the rest of them so we use it in shifting 


# we can use it in shifting elements
set shifted_list [lassign $list_var3 x]
puts $shifted_list


