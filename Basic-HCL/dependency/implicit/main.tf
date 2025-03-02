resource "local_file" "local_file_res" {
  filename = "implicit.txt"
  content = "this content is created implicitly: ${random_string.rstring.result}"
}

resource "random_string" "rstring" {
  length = 200
}