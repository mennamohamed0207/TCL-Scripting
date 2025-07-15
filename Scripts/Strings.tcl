#!/usr/bin/env tclsh

#  String Operations
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~String Operations~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  "
set statement "this is a statement"
set need_trim "   this is a statement   "

puts "the string after trim is [string trim $need_trim]"
puts "the string after trim is [string trimleft $need_trim]"
puts "the string after trim is [string trimright $need_trim]"
puts "the string after trim is [string tolower $statement]"
puts "the string after trim is [string toupper $statement]"
puts "the length of string is [string length $statement]"

puts "is first occured at [string first "is" $statement]"

puts "we get the substring from 2 to 4 [string range $statement 2 4]"

puts "puts the string after replace [string replace $statement end-8 end statement2]"

set string1 "first statement"
set string2 "second statement"


if {[string compare $string1 $string2] == 0} { # it return 0 when equal and 1,-1 when not equal
    puts "strings are equal"
} else {
    puts "strings are not equal"
}

puts "the end index of the word that starts at index 0 [string wordend $statement 0]"
puts "the start index of the word that ends at index 4 [string wordstart $statement 3]"

if {[string match "*statement*" $statement] == 1} { # it return 0 when not equal and 1 when it matches the pattern
    puts "string matched"
}

# Compare and search 
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Compare and Search~~~~~~~~~~~~~~~~~~~~~~~~~~~"

#1. eq/==

if {$statement == "this is a statement"} {
    puts "strings are equal"
}
if {$statement eq "this is a statement"} {
    puts "strings are equal"
}

#2. string equal

if {[string equal $statement "this is a statement"]} {
    puts "strings are equal"
}

#3. string compare 

if {[string compare $statement "this is a statement"] == 0} {
    puts "strings are equal"
}

#4. string match

if {[string match "*statement*" $statement] == 1} { # it return 0 when not equal and 1 when it matches the pattern
    puts "string matched"
}

#5. glob is used to search in files
puts "All files and directories : [glob * ]"
puts "directories only : [glob -nocomplain -type d  *]"
puts "Tcl files : [glob -nocomplain -d Scripts *.tcl]"

puts "Tcl and text files [glob -nocomplain -tail -d Scripts  *{.tcl,.txt}]"

#6. regexp

if {[regexp {statement} $statement]} {
    puts "string matched"
}

puts [regexp {.*(statement).*} $statement a b c]
puts "Full match is $a"
puts "First Group match is $b"
puts "Second Group (if any) match is $c"


set statementwithnumbers "this is 123 statement"
puts [regexp {(\d+)} $statementwithnumbers a b c]
puts "Full match is $a"
puts "First Group match is $b"
puts "Second Group (if any) match is $c"

puts [regexp {([[:alpha:]]+) ([[:alpha:]]+) ([[:digit:]]+) ([[:alpha:]]*)} $statementwithnumbers a b c d]
puts "Full match is $a"
puts "First alphabetic word: $b"
puts "Digits: $c"
puts "Remaining alphabetic word (if any): $d"

puts [regexp -start 4 {([[:alpha:]]+) ([[:digit:]]+) ([[:alpha:]]*)} $statementwithnumbers a b c d]
puts "Full match is $a"
puts "First alphabetic word: $b"
puts "Digits: $c"
puts "Remaining alphabetic word (if any): $d"

puts [regexp -inline -all {.*is.*} $statement]
puts [regexp -indices  {.*is.*} $statement a]

puts $a
