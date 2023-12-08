variable "s1" {
  default = ["apple","banana"]
}
output "s1" {
  value = join("-",var.s1)
}