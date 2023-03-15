variable "resource_group" {
    type        = string
      
}

variable "address_space" {
    type        = list(string)
    default     = [ "192.168.0.0/16" ]
  
}

variable "target_location" {
    type        = string
    default     = "eastUS"
  
}

variable "subnets" {
    type        = list(string)
      
  
}

variable "subnet_address" {
    type        = object({
        addressprefix = list(string)

    })
     
  
}


