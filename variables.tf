variable "instance_type_list" {
    type = list(string)
    default = ["t2.small","t2.micro","t2.large","t2.medium"]
}

variable "servername" {
    type = string
    default = "test"
}

variable "ami_map" {
    type = map(string)
    default = {
        us-east-1 = "ami-0bb84b8ffd87024d8"
        us-east-2 = "ami-0490fddec0cbeb88b"
        us-west-1 = "ami-04fdea8e25817cd69"
        us-west-2 = "ami-02d3770deb1c746ec"
    }
}
