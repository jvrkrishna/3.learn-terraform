####### Plain Type (input) ########
variable "couse_plain" {
  default = "Devops Training"
}

######## Output #########
output "course_plain" {
  value = var.couse_plain
}

####### List Type (input) ########
variable "course_list" {
  default =[
    "Devops",
    "AWS",
    "Python"
  ]
}

######## Output #########
output "course_list" {
  value = var.course_list
}




