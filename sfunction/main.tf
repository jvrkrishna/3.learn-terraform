variable "course" {
  default = {
    Devops = {
      topics = ["Devops","Jenkins"]
      Duration = "90days"
    }
    AWS = {
      topics = "cloud"
    }
  }
}

######## To print the map output ###########
output "couse_name" {
  value = lookup(var.course, ["rama"], null)
}