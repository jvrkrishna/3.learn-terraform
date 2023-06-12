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
    Devops = {
      topics = ["Devops","Jenkins"]
      time = "90days"
    }
    AWS = {
      topics = "cloud"
    }
  }
}

######## To print the map output ###########
output "couse_name" {
  value = var.course["Devops"]["topics"]
}

####### To lookup whether value is there or not #########
output "course_lookup" {
  value = lookup(var.course, "AWS", null)
}

####### To lookup whether value is there or not #########
output "course_lookup1" {
  value = lookup(lookup(var.course, "AWS", null), "topics","no topics assigned")
}