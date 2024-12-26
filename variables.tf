variable "instances" {
  type        = map
}

variable "zone_id" {
    default = "Z00909132T1JJDSG4SBDV"
}

variable "domain_name" {
    default = "yashd.icu"
}

variable "common_tags"{
   default = {
      project = "expense"
      terraform = "true"
   }
}

variable "tags" {
  type = map
}

variable "environment" {
  
}