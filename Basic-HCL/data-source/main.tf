data "local_file" "name" {
  filename = var.filename1
}

output "content" {
  value = data.local_file.name.content
}