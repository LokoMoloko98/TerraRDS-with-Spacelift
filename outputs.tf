output "completion_time" {
  value = timeadd(timestamp(), "2h")
}

output "aws_ebs_volume" {
  value = aws_ebs_volume.example.id
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnet_az1_id" {
  value = aws_subnet.public_subnet_az1.id
}
