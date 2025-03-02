resource "local_file" "sensitive_local_file" {
  filename = "sample.txt"
  sensitive_content = "Hello world!!!"
  file_permission = "0700"
}