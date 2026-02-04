resource "aws_key_pair" "vpninfra" {
  key_name   = "vpninfra"
  public_key = file("D:\\devops\\daws-82s\\Terraform\\vpninfra.pub")
}


resource "aws_instance" "vpn" {
    ami = data.aws_ami.openvpn.id
     key_name = aws_key_pair.vpninfra.key_name
    instance_type = "t3.micro"
    vpc_security_group_ids = [local.vpn_sg_id]
    subnet_id   = local.public_subnet_id
    tags = merge(
      var.common_tags,
      {
        Name = "${var.project_name}-${var.environment}-vpn"
      }
    )
}

output "vpn_ip" {
  value       = aws_instance.vpn.public_ip
}