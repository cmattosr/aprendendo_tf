variable "image_id" {
    default = "ami-0c66125b80edb4a1d"
    type = string
    description = "The id of the machine image to use for the EC2 instance in Region us-west-2."

    validation {
        condition = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
        error_message = "The image_id must be a valid AMI id, starting with \"ami-\"."
    }

    sensitive = true
}