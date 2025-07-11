#!/usr/bin/env tclsh

proc Div {a b} {
if {$b == 0} {
    error "Division by zero" "can't do this operation" 401
} else {
    return [expr $a/$b]
}
}

if {[catch {puts "result = [Div 10 0]"} errorMsg]} {

    puts $errorMsg
    puts $errorInfo
    puts $errorCode
}