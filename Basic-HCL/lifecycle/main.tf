resource "random_integer" "rint" {
    min = 100
    max = 10000 

        lifecycle {
        #   create_before_destroy = false
            # prevent_destroy = false
            ignore_changes = [ min ]
        }
}
