resource "aws_lb" "task-vpc" {
  name               = "task-vpc-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${var.alb-sg}",]
  subnets            = ["${var.pub1-sub}",]

  enable_deletion_protection = false

  tags = {
    Environment = "task-vpc-alb"
  }
}

resource "aws_lb_target_group" "task-vpc-tg" {
  name     = "task-vpc-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

resource "aws_lb_listener" "task-vpc-listener" {
  load_balancer_arn = aws_lb.task-vpc.arn
  port              = "80"
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.task-vpc-tg.arn
  }
}

resource "aws_lb_target_group_attachment" "task-vpc-attach" {
  target_group_arn = aws_lb_target_group.task-vpc-tg.arn
  target_id        = var.ec2-id
  port             = 80
}
