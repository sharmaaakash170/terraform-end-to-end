resource "random_integer" "rint" {
    min = 10
    max = 100  
}

resource "random_string" "rstring" {
  length = 20
}

output "random-integer" {
  value = random_integer.rint.result
}

output "random-string" {
  value = random_string.rstring.result
}