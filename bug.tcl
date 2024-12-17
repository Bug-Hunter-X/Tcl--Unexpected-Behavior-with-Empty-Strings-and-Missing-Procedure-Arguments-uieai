proc check_empty_string {str} {
    if {$str == ""} {
        return 1
    } else {
        return 0
    }
}

# Incorrect usage that leads to unexpected behavior
set myString {}

if {[check_empty_string $myString] == 1} {
    puts "String is empty"
} else {
    puts "String is not empty"
}

# Another incorrect usage that can cause errors
set myVar [check_empty_string]; # Missing argument
puts $myVar