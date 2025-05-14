variable "region" {
  default = "us-west-2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "devops-challenge"
  type        = string
  default     = "devops-challenge"
}

variable "ami_id" {
  default = "ami-075686beab831bb7f"
}