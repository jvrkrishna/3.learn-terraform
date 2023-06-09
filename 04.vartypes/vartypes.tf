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
  default = [
    "Devops",
    "AWS",
    "Python"
  ]
}

######## Output #########
output "course_list" {
  value = var.course_list  #### use this to filter only one details   value = var.course_list[2]
}

####### Map Type (input) ########
variable "course_map" {
  default = {
    Devops = {
      name = "devops"
      Timing = "10am"
      Duration = 90
    }
    AWS = {
      name = "AWS"
      timing = "7am"
      Duration = 30

    }
  }
}

######## Output #########
output "course_map" {
  value = var.course_map   #### use this to filter only one details   value = var.course_map[“Devops”]
}

############################################################
variable "env" {}

output "env" {
  value = var.env
}

############################
variable "url" {}

output "url" {
  value = var.url
}



