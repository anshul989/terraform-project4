###for each(map)
#  variable "loop_name" {
#     type = map(string)
#     description = "provide name for tags"
  
# }

### for each(set)
variable "set" {
    type = set(string)
    description = "give instance ami"

}