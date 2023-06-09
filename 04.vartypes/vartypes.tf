####### Plain Type (input) ########
variable "couse_plain" {
  default = "Devops Training"
}

######## Output #########
output "course" {
  value = var.couse_plain
}


