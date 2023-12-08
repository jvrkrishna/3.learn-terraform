variable "s1" {
  default = ["Hello World"]
}
output "s1" {
  value = endswith(var.s1, "world")
}