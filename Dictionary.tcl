#!/usr/bin/env tclsh

dict set mydict key1 value1
dict set mydict key2 value2
dict set mydict key3 value3

foreach item [dict keys $mydict] {
    set value [dict get $mydict $item]
    puts "The value of $item is $value"
}