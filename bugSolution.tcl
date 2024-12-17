proc check_empty_string {str} {
    if {$str == ""} {
        return 1
    } else {
        return 0
    }
}

# Correct usage:
set myString {}

if {[check_empty_string $myString] == 1} {
    puts "String is empty"
} else {
    puts "String is not empty"
}

# Handling potential errors
proc check_empty_string_safe {str} {
    if {[string length $str] == 0} {
        return 1
    } else {
        return 0
    }
}
#Always check for the correct number of arguments passed to a procedure.
proc check_empty_string_safe2 {str} { 
  if { $str eq {} } { 
    return 1 
  } else { 
    return 0 
  } 
}
#Example of safe usage
set myString2 abc
puts [check_empty_string_safe2 $myString2]

