locals {
    private_subnet_id = split(",", data.aws_ssm_parameter.private_subnet_ids.value)
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    app_alb_sg_id = data.aws_ssm_parameter.app_alb_sg_id.value
}