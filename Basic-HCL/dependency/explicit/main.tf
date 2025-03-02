resource "local_file" "local_file_res" {
  filename = "explicit.txt"
  content = "this content is created explicitly: ${random_string.rstring.result}"
  depends_on = [ random_string.rstring ]
}

resource "random_string" "rstring" {
  length = 200
}

output "file_output" {
  value = local_file.local_file_res.content
}