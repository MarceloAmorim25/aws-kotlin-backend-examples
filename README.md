# Sobre o repositório

Esse repositório tem como objetivo auxiliar a todos que queiram estudar os recursos disponibilizados pela
Amazon Web Services (AWS).

É notório que o número de serviços é extenso e às vezes é difícil saber por onde começar. A ideia aqui, portanto, é criar um direcionamento para que as pessoas possam conhecer e ter domínio dessas ferramentas.

# Resumo geral do projeto

A ideia é aprendermos sobre AWS por meio de desafios práticos. Os desafios serão divididos em duas seções:

- seção 1: desafios em contextos específicos

Esses desafios serão como treinamentos para interações entre no máximo quatro serviços diferentes da AWS. A ideia aqui é
treinar para quando chegarmos nas implementações de desenhos de arquitetura estarmos com os fundamentos em dia. Então primeiro desafios de menor complexidade, para depois evoluirmos para desafios de maior complexidade.

- seção 2: desafios de implementação de desenhos de arquitetura

Aqui iremos implementar desenhos de arquitetura presentes na documentação da AWS - são diagramas de refêrencia e por isso são importantes para aprofundarmos nosso conhecimento:

https://aws.amazon.com/architecture/reference-architecture-diagrams/

- seção 3: desenho de soluções e implementação

Vamos tentar desenhar soluções para os desafios propostos nesse repositório com recursos da AWS?

https://github.com/donnemartin/system-design-primer

https://www.geeksforgeeks.org/system-design-tutorial/

# Como interagir com o repositório

Aqui utilizaremos três ferramentas principais para criar e gerenciar nossos recursos:

1 - terraform

Instalação: https://learn.hashicorp.com/tutorials/terraform/install-cli

2 - aws cli

Instalação: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html


3 - localstack

Para iniciar a localstack

Instalação: https://github.com/localstack/localstack

> localstack start -d

> localstack status services


# Conteúdos muito importantes para nos ajudar no aprendizado

Essas serão as duas referências utilizadas para estudar os serviços AWS.

### Exemplos de setups (fundamental no projeto - base para tudo que fiz aqui)

https://github.com/aws-samples/serverless-patterns

### Documentação oficial da AWS CLI

https://docs.aws.amazon.com/cli/latest/reference/#available-services


### Diagramas arquiteturais de referência da AWS

Essa referência terá como utilidade treinarmos a implementação de diagramas já desenhados pelo time de engenharia da Amazon.

https://aws.amazon.com/architecture/reference-architecture-diagrams/


### Serverlessland

Este site será utilizado para estudar micro contextos, sendo útil para treinarmos como visualizar mais situações micro de integração entre serviços AWS.

https://serverlessland.com/
