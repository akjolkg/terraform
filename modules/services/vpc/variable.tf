variable "vpc_cidr_block" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = string
}

variable "vpc_name" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = string
}