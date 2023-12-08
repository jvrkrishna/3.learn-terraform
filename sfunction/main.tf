variable "sa" {
  default = ["rama","krishna"]
}
output "s1" {
  value = element(var.sa,3)
}