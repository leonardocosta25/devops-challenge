# DevOps Challenge - Infraestrutura na AWS com CI/CD


## 🚀 Descrição

Este projeto cria e configura automaticamente uma instância EC2 na AWS, aplica boas práticas de segurança e provisionamento, e entrega contínua de uma aplicação HTML via CI/CD.

## 🧰 Tecnologias usadas

- AWS EC2
- Terraform
- Ansible
- GitHub Actions
- NGINX
- Ubuntu 24.04

## ⚙️ Como instalar e executar

### Pré-requisitos

- AWS CLI configurado
- Terraform
- Ansible
- Chave SSH pública configurada na AWS

### Etapas

1º EXEMPLO EXECUTANDO PRIMEIRO O APPLY DO TERRAFORM E DEPOIS FAZER COMMIT PRO GIT.
```bash
git clone https://github.com/leonardocosta25/devops-challenge.git
cd devops-challenge
terraform -chdir=terraform apply -auto-approve && bash generate_inventory.sh
git add . && git commit -m "Adicionando o arquivo de inventário" && git push origin main
```


2º EXEMPLO EXECUTANDO SOMENTE LOCAL

1. Clone o repositório:
```bash
git clone https://github.com/leonardocosta25/devops-challenge.git
cd devops-challenge
terraform -chdir=terraform apply -auto-approve && ansible-playbook ansible/provisioning.yml


# Para destruir a infraestrutura criada, execute: 
terraform destroy -auto-approve

```

## Como projeto de teste foi utilizado só uma pagina HTML estática, mas pode facilmente expandir isso para incluir uma aplicação mais complexa. Tambpém podendo criar um pipeline de CI/CD mais robusto com testes automatizados, integração com Docker, etc.







###################################################################################
## Infra Challenge 20240202

## Introdução

Este é um teste para que possamos ver as suas habilidades como DevOps.

Nesse teste você deverá configurar um servidor, aplicar os principais recursos de segurança e trabalhar com Infra as Code

[SPOILER] As instruções de entrega e apresentação do challenge estão no final deste Readme (=

### Antes de começar
 
- Considere como deadline da avaliação a partir do início do teste. Caso tenha sido convidado a realizar o teste e não seja possível concluir dentro deste período, avise a pessoa que o convidou para receber instruções sobre o que fazer.
- Documentar todo o processo de investigação para o desenvolvimento da atividade (README.md no seu repositório); os resultados destas tarefas são tão importantes do que o seu processo de pensamento e decisões à medida que as completa, por isso tente documentar e apresentar os seus hipóteses e decisões na medida do possível.


## **Parte 1 - Configuração do Servidor**

A sua tarefa consiste em configurar um servidor baseado na nuvem e instalar e configurar alguns componentes básicos.


1. Configurar grupo de segurança na AWS
2. Configuração da redes para o Servidor
3. Configurar um servidor AWS (recomenda-se o freetier) executando uma versão Ubuntu LTS.
4. Instalar e configurar qualquer software que você recomendaria em uma configuração de servidor padrão sob as perspectivas de segurança, desempenho, backup e monitorização.
5. Instalar e configurar o nginx para servir uma página web HTML estática.



## **Part 2 – Infra as Code**

Como diferencial, você poderá configurar toda a infra-estrutura com ferramentas como:

- Ansible
- Terraform
- AWS CDK ou CloudFormation

Ao ter o projeto executando em um servidor e aplicando as melhores práticas de segurança com grupos de segurança e as configurações de rede criando completamente por código.


## **Part 3 – Continuous Delivery**

Desenhar e construir uma pipeline para apoiar a entrega contínua da aplicação de monitorização construída na Parte 2 no servidor configurado na Parte 1. Descrever a pipeline utilizando um diagrama de fluxo e explicar o objetivo e o processo de seleção usado em cada uma das ferramentas e técnicas específicas que compõem a sua pipeline. 

## Readme do Repositório

- Deve conter o título do projeto
- Uma descrição sobre o projeto em frase
- Deve conter uma lista com linguagem, framework e/ou tecnologias usadas
- Como instalar e usar o projeto (instruções)
- Não esqueça o [.gitignore](https://www.toptal.com/developers/gitignore)
- Se está usando github pessoal, referencie que é um challenge by coodesh:  

>  This is a challenge by [Coodesh](https://coodesh.com/)

## Finalização e Instruções para a Apresentação

1. Adicione o link do repositório com a sua solução no teste
2. Verifique se o Readme está bom e faça o commit final em seu repositório;
3. Envie e aguarde as instruções para seguir. Caso o teste tenha apresentação de vídeo, dentro da tela de entrega será possível gravar após adicionar o link do repositório. Sucesso e boa sorte. =)


## Suporte

Para tirar dúvidas sobre o processo envie uma mensagem diretamente a um especialista no chat da plataforma. 
