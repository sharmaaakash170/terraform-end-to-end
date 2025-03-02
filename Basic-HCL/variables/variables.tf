/*
variable "min" {
  type = number
  default = "1"
}
*/

/*
variable "max" {
  type = number
  default = "2"
}
*/

variable filename {
  type = string
  default = "sample.txt"
}
/*
variable content {
  type = bool
  default = false
}

variable content {
  type = list(string)
  default = [ "0", "1", "2" ]
}

variable content {
  type = tuple([ bool, string, number ])
  default = [true, "aakash", 5]
}
*/
variable content {
  type = map
  default = {name= "aakash", age= "25"}
}
