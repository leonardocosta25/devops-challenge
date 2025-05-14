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

variable "private_key_path" {
  description = "/home/leonardoac/devops-challenge/devops-challenge/.ssh/devops-challenge.pem"
  type        = string
  default     = "/home/leonardoac/devops-challenge/devops-challenge/.ssh/devops-challenge.pem"
}

variable "ami_id" {
  default = "ami-075686beab831bb7f" # Ubuntu Server 24.04 LTS (us-east-1)
}