#!/usr/bin/env tclsh
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~using Eval~~~~~~~~~~~~~~~~~~~~~~~~~~~"

set script {
set a 9
set b 5
set result [expr $a+$b]
}

eval $script

puts $result
# eval with the double $$ to get the value of the variable

set missing_value_script {
set x 7
set y 3
set z
}
set i 9
set j i
eval $missing_value_script $$j
puts $z

puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~using Exec~~~~~~~~~~~~~~~~~~~~~~~~~~~"

puts [exec python3 hello.py]

set cmd "python3 hello.py"
puts [eval exec $cmd]


puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~Reading and writing to file ~~~~~~~~~~~~~~~~~~~~~~~~~~~"

set fRead [open "file.txt" "r"]
set fWrite [open "written_file.txt" "w"]

while { ![eof $fRead] } {
    set line [gets $fRead];
    regsub -all "file" $line "written_file" line    
    puts $fWrite $line
}
close $fRead
close $fWrite

set read_file [open "written_file.txt" "r"]
puts [read $read_file]

close $read_file