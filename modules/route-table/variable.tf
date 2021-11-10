variable "vpc_id"{

}

variable "nat_id"{

}

variable "rt-task-vpc-ig"{
    type    = string
   default = "task-vpc-rt-ig"

}

variable "task-vpc-ig"{

}

variable rt-task-vpc-nat{
    type    = string
   default = "task-vpc-rt-nat"

}