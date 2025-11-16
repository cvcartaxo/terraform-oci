
---

##  Requisitos

Antes de iniciar, certifique-se de ter instalado e configurado:

- **Terraform >= 1.5**
- **OCI CLI** 
- **Chave API** configurada em `~/.oci/`
- Acesso ao tenancy na OCI

## Doc instalação terraform e OCI CLI 

- https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli 


- https://docs.oracle.com/pt-br/iaas/private-cloud-appliance/pca/installing-the-oci-cli.htm

---

##  Configuração da Autenticação

O Terraform utiliza a autenticação por **API Key**.

Crie um arquivo `terraform.tfvars` Insira os valores no mesmo :

```hcl
region        = "sa-vinhedo-1" Criar em sua região. 
tenancy_ocid  = "ocid1.tenancy.oc1..xxxxx" = pegar informação no pianel da OCI.
user_ocid     = "ocid1.user.oc1..xxxxx" = pegar informação no pianel da OCI.
fingerprint   = "aa:bb:cc:dd:..." = pegar informação no pianel da OCI. 
private_key_path = "~/.oci/oci_api_key.pem" 

compartment_ocid    = "ocid1.compartment.oc1..xxxxx" = pegar informação no pianel da OCI.
subnet_ocid         = "ocid1.subnet.oc1.xxxxx" pegar informação no pianel da OCI.
availability_domain = "CoKB:SA-VINHEDO-1-AD-1" = Ajuste para sua região.
vcn_id              = "ocid1.vcn.oc1.xxxxx"

```
---

####  Executar o Terraform

#### Instala  autocompletar 
```bash
terraform -install-autocomplete
```
#### Inicializa do backend.
```bash
terraform init 
```
#### Gera o planejamento.
#### É obrigatório o uso do arquivo de variáveis 'terraform.tfvars' neste comando.
```bash
terraform plan -var-file=terraform.tfvars
```
#### Aplica o plano de execução, provisionando os recursos na nuvem.
#### É obrigatório o uso do arquivo de variáveis 'terraform.tfvars' neste comando.
```bash
terraform apply -var-file=terraform.tfvars
```
#### Exibe os valores de recursos criados com output.
```bash
terraform output
```
#### Destrói todos os recursos gerenciados pelo estado atual do Terraform.
```bash
terraform destroy -auto-approve
```