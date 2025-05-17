variable "public_subnet_cidrs" {
 type        = list(string)
 description = "Public Subnet CIDR values"
 default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "azs" {
 type = list(string)
 description = "availability zones"
 default = ["us-east-1a","us-east-1b"]
}

