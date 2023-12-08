variable "s1" {
  default = ["apple","banana"]
}
output "s1" {
  value = endswith(var.s1, "na")
}