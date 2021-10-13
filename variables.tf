variable "zone_name" {
  description = "Name of the route53 zone"
  type = string
}

variable "aliases" {
  description = "List of aliases to create in the zone"
  type = list(string)
}

variable "distribution_id" {
  description = "ID of the Cloudfront distribution"
  type = string
}
