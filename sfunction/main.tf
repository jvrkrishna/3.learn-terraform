variable "s1" {
  default = ["Hello World"]
}
output "s1" {
  value = title(var.s1)
}