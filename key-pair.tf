resource "aws_key_pair" "narayana_terraform_key" {
  key_name  = "${var.usuario}-terraform-aws"
  public_key = file("terraform-aws.pub")

}