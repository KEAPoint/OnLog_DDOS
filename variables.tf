variable "regions" {
  description = "List of regions"
  type        = list(string)
  default     = ["us-east-1"]
}

variable "ami" {
  description = "The id of machine image (ami) to use for the instance"
  type        = string
  default     = "ami-0fc5d935ebf8bc3bc"
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The key pair to use for the instance"
  type        = string
  default     = "gcu-kea-keapoint-keypair"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default = {
    "Unv" = "GCU"
  }
}
