variable "class" {
  default = "devops"
}

###### print the same in Capital Letters ######
output "class" {
  value = var.class
}