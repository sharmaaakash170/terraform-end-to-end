/*
resource "random_integer" "rint" {
    min = var.min
    max = var.max 
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
*/

resource "local_file" "local_file_res" {
  filename = var.filename
  content = var.content["age"]
}

