variable "vpc_id"{

}

variable "alb-sg-name"{
    type    = string
    default = "task-vpc-alb-sg"
    
}

variable "ec2-sg-name"{
     type    = string
    default = "task-vpc-pri-sg"

}

variable "rds-sg-name"{
    type    = string
    default = "task-vpc-rds-sg"
}

variable "pub-sg-name"{
        type    = string
    default = "task-vpc-pub-sg"
}