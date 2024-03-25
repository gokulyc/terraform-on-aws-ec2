# Input Variables

# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "ap-south-1"  
}

variable "aws_vpc_azs" {
  description = "Region in which AWS Resources to be created"
  type = list(string)
  default = ["ap-south-1a", "ap-south-1b"]  
}


