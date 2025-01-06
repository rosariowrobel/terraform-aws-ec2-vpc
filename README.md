# Terraform AWS EC2 y VPC

Este proyecto utiliza **Terraform** para aprovisionar recursos en AWS, incluyendo una VPC, subred pública, tabla de rutas, grupo de seguridad e instancia EC2.

## Descripción
El objetivo principal de este proyecto es automatizar el despliegue de una infraestructura básica en AWS utilizando el enfoque de Infraestructura como Código (IaC). Esto incluye:
- Creación de una VPC con subred pública.
- Configuración de un Internet Gateway y una tabla de rutas.
- Aprovisionamiento de una instancia EC2 accesible mediante SSH y conectada a Internet.

## Estructura del Proyecto
- `main.tf`: Contiene la configuración principal de los recursos.
- `variables.tf`: Define las variables para personalizar la infraestructura.
- `outputs.tf`: Especifica las salidas clave, como la IP pública de la instancia EC2.
- `.gitignore`: Excluye archivos sensibles y generados automáticamente, como `.terraform/` y `*.tfstate`.

## Requisitos Previos
- Tener una cuenta de AWS configurada.
- Instalar [Terraform](https://www.terraform.io/downloads).
- Contar con un Key Pair en AWS para conectarte a la instancia EC2.

## Cómo Usarlo
1. Cloná este repositorio:
   ```bash
   git clone [https://github.com/rosariowrobel/terraform-aws-ec2-vpc]
   cd terraform-aws-ec2-vpc

2. Inicializá Terraform:

terraform init

3. Revisá el plan de implementación:
   
terraform plan

4. Aplicá los cambios:

terraform apply

5. Anotá la IP pública de la instancia EC2 que aparece en la salida.

6. Conectate a la instancia EC2:

ssh -i ~/ruta/a/tu/clave.pem ec2-user@<IP-Pública>

## Limpieza de Recursos
Para evitar costos adicionales, destruí los recursos cuando ya no los necesites:

terraform destroy
