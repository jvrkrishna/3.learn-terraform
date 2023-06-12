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
  value = length(var.fruit_list)#####element(var.fruit_list, 4) ####var.fruit_list[1]

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
  value = lookup(lookup(var.fruit_map, "fruit3", null ), "color", "Color Not Assigned")
}