provider "aws" {
  region = "us-east-2"
  
}

resource "aws_instance" "narayana_ec2" {
  count         = 2
  ami           = "ami-097a2df4ac947655f"
  instance_type = "t2.micro"
  key_name      = "narayana_terraform_aws"
  tags = {
    "Name" = "narayana-${count.index}"
  }
}

resource "aws_key_pair" "narayana_terraform_key" {
  key_name  = "narayana_terraform_aws"
  public_key = file("terraform-aws.pub")

}

# terraform init - baixar os modulos do terraform baseado nos seus arquivos
# terraform plan - mostrar o plano a ser feito
# terraform apply - vai aplicar o plano ou seja vai contruir tudo se não tiver erro
# terraform destroy - acabou, já era boa sorte
# terraform output - mostra as saidas do output
# terraform show - mostra como está a sua infra

# ssh -i pasta/nome-da-chave usuario@IP-ou-DNS
# ssh -i .ssh/terraform-aws ubuntu@3.141.85.40 o @ precisa subtituir pela da minha maquina