variable "region" {
  type = map(string)
  default = {
    "N_Virginia"   = "us-east-1"
    "Ohio"         = "us-east-2"
    "N_California" = "us-west-1"
    "Oregon"       = "us-west-2"
  }
}

variable "dns_private_zone_name" {
  description = "private_zone"
  type        = string
  default     = "dev.dp.h1.co."
}

variable "dns_reverse_zone_name" {
  description = "reverse zone"
  type        = string
  default     = "10.155.in-addr.arpa."
}
