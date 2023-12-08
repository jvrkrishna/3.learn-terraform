variable "sa" {
  default = "rama"
}
output "s1" {
  value = upper(var.sa)
}