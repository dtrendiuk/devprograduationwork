# ALB Green
resource "aws_alb" "dev_pro_alb_green" {
  name            = "${var.alb_name}-green"
  subnets         = module.vpc.public_subnet_ids[*]
  security_groups = [module.vpc.sg_public_id]

  tags = {
    Name = "${var.env}-alb-green"
  }
}

resource "aws_alb_listener" "dev_pro_alb_listener_green" {
  load_balancer_arn = aws_alb.dev_pro_alb_green.arn
  port              = var.aws_alb_listener_port
  protocol          = var.aws_alb_listener_protocol

  default_action {
    type             = "forward"
    target_group_arn = aws_alb_target_group.dev_pro_tg_green_1.arn
  }
}

resource "aws_lb_listener_rule" "dev_pro_listener_rule" {
  listener_arn = aws_alb_listener.dev_pro_alb_listener_green.arn

  action {
    type             = "forward"
    target_group_arn = aws_alb_target_group.dev_pro_tg_green_2.arn
  }

  condition {
    path_pattern {
      values = ["/phpmyadmin/*"]
    }
  }
}

# Target groups Green
resource "aws_alb_target_group" "dev_pro_tg_green_1" {
  name     = "${var.tg_1_name}-green"
  port     = var.tg_1_port
  protocol = var.tg_1_protocol
  vpc_id   = module.vpc.vpc_id

  tags = {
    Name = "${var.env}-tg-green-1"
  }

  health_check {
    path = "/index.html"
  }
}

resource "aws_alb_target_group" "dev_pro_tg_green_2" {
  name     = "${var.tg_2_name}-green"
  port     = var.tg_2_port
  protocol = var.tg_2_protocol
  vpc_id   = module.vpc.vpc_id

  tags = {
    Name = "${var.env}-tg-green-2"
  }

  health_check {
    path = "/phpmyadmin/"
  }
}

resource "aws_alb_target_group_attachment" "dev_pro_tg_green_1" {
  target_group_arn = aws_alb_target_group.dev_pro_tg_green_1.arn
  target_id        = module.ec2-webserver-green.instance[0]
}

resource "aws_alb_target_group_attachment" "dev_pro_tg_green_2" {
  target_group_arn = aws_alb_target_group.dev_pro_tg_green_2.arn
  target_id        = module.ec2-phpmyadmin-green.instance[0]
}


# ALB Blue
resource "aws_alb" "dev_pro_alb_blue" {
  name            = "${var.alb_name}-blue"
  subnets         = module.vpc.public_subnet_ids[*]
  security_groups = [module.vpc.sg_public_id]

  tags = {
    Name = "${var.env}-alb-blue"
  }
}

resource "aws_alb_listener" "dev_pro_alb_listener_blue" {
  load_balancer_arn = aws_alb.dev_pro_alb_blue.arn
  port              = var.aws_alb_listener_port
  protocol          = var.aws_alb_listener_protocol

  default_action {
    type             = "forward"
    target_group_arn = aws_alb_target_group.dev_pro_tg_blue_1.arn
  }
}

resource "aws_lb_listener_rule" "dev_pro_listener_rule_blue" {
  listener_arn = aws_alb_listener.dev_pro_alb_listener_blue.arn

  action {
    type             = "forward"
    target_group_arn = aws_alb_target_group.dev_pro_tg_blue_2.arn
  }

  condition {
    path_pattern {
      values = ["/phpmyadmin/*"]
    }
  }
}

# Target groups Blue
resource "aws_alb_target_group" "dev_pro_tg_blue_1" {
  name     = "${var.tg_1_name}-blue"
  port     = var.tg_1_port
  protocol = var.tg_1_protocol
  vpc_id   = module.vpc.vpc_id

  tags = {
    Name = "${var.env}-tg-blue-1"
  }

  health_check {
    path = "/index.html"
  }
}

resource "aws_alb_target_group" "dev_pro_tg_blue_2" {
  name     = "${var.tg_2_name}-blue"
  port     = var.tg_2_port
  protocol = var.tg_2_protocol
  vpc_id   = module.vpc.vpc_id

  tags = {
    Name = "${var.env}-tg-blue-2"
  }

  health_check {
    path = "/phpmyadmin/"
  }
}

resource "aws_alb_target_group_attachment" "dev_pro_tg_blue_1" {
  target_group_arn = aws_alb_target_group.dev_pro_tg_blue_1.arn
  target_id        = module.ec2-webserver-blue.instance[0]
}

resource "aws_alb_target_group_attachment" "dev_pro_tg_blue_2" {
  target_group_arn = aws_alb_target_group.dev_pro_tg_blue_2.arn
  target_id        = module.ec2-phpmyadmin-blue.instance[0]
}
