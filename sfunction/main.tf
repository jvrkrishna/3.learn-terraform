variable "instance" {
  default = "rama"
}

output "instance" {
  value = upper("rama")
}