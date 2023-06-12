########### plain type variable declaration ##########
variable "class" {
  default = "devops"
}

###### print the same in Capital Letters ######
output "class" {
  value = upper(var.class)
}

######## List type declaration ###########
variable "courses" {
  default = ["Devops", "Jenkins"]
}

###### print the count of list ##########
output "courses_list" {
  value = length(var.courses)
}

######### map type declaration #########
variable "course" {
  default = {
    course1 = {
      name = "Devops"
      time = "90days"
    }
    course2 = {
      name = "AWS"
      timings = ["4h", "3hr"]
    }
  }
}

######## To print the map output ###########
output "couse_name" {
  value = var.course["course2"]["timings"]
}