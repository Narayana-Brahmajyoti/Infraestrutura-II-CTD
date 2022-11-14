provider "aws" {
  region = var.regiao

}





# terraform init - baixar os modulos do terraform baseado nos seus arquivos
# terraform plan - mostrar o plano a ser feito
#terraform plan -out="arquivo.out" cria um arquivo com o plano para chamar este plano deve usar o comando  terraform apply "arquivo.out"
# terraform apply -auto-approve -> vai aplicar o plano ou seja vai contruir tudo se não tiver erro
# terraform destroy - acabou, já era boa sorte
# terraform output - mostra as saidas do output
# terraform show - mostra como está a sua infra
# terraform fmt - identa os arquivos corretamente



# ssh -i pasta/nome-da-chave usuario@IP-ou-DNS acessar pelo powerShell
# ssh -i .ssh/terraform-aws ubuntu@52.15.201.39 