variable "sa" {
  default = ["rama","krishna"]
}
output "s1" {
  value = length(var.sa)
}