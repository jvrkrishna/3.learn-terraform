variable "fruit" {
  default = "devops"
}

output "fruit" {
  value = var.fruit
}

variable "fruit_list" {
  default = ["Apple", "Banana", "Orange"]
}

output "fruit_list" {
  value = element(var.fruit_list, index) ####var.fruit_list[1]

}


variable "fruit_map" {
  default = {
    fruit1 = {
      Name = "Apple"
      color = ["Green", "Red"]
    }
    fruit2 = {
      Name = "Banana"
      color = ["yellow", "Greeen"]
    }
    fruit3 = {
      Name = "Orange"
    }
  }
}

output "fruit_map" {
  value = var.fruit_map.fruit1.color
}