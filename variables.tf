variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-0c02fb55956c7d316" # Amazon Linux 2
}

variable "allowed_ssh_cidr" {
  default = "0.0.0.0/0" # Cambiar a la IP pública del desarrollador para mayor seguridad
}

variable "key_name" {
  default = "clave-nueva-ec2" # Cambiar al nombre del Key Pair creado
}
