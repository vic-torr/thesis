# Resenha TCCs
___
Aluno: Victor Moraes - 2016027600
___
Tarefa para entrega das resenhas de TCC

As resenhas de TCC devem conter uma análise crítica das apresentações assistidas.  Mais especificamente, cada resenha deve conter:

- Título do trabalho
- Nome do aluno apresentador e de seu orientador
- WHAT, WHY, HOW do trabalho
- Um ou mais pontos positivos do trabalho
- Um ou mais pontos negativos do trabalho

As resenhas devem conter entre 200 e 400 palavras (textos fora desse limite de tamanho serão penalizados). Como em 2022/1 as defesas de TCC ocorrerão de forma virtual, não será necessária a entrega do formulário de presença a defesas de TCC. Assim, basta entregar um arquivo pdf com o texto das resenhas segundo as instruções acima.Resenha

---
## Titulo: Utilização da linguagem P4 para balanceamento de carga em uma rede de computadores.

Data: 11/07/2022 14:30h


Aluno: Guilherme Viveiros
Professor Orientador: Luciano de Errico
Professor da banca: Hermes Magalhães


O trabalho aborda as SDN: software defined networks, ou redes definidas por software. Consistem de mecanismos de implementar uma infraestrutura de rede altamente configurável e programável, definindo como por exemplo redirecionamento de pacotes e várias regras de roteamento anteriormente implementadas por servidores ou roteadores. Podem ser implementados por ASICs de redirecionamento de pacotes, implementando, por exemplo, balanceamento de carga, agregamento de pacotes, regras de roteamento, regras sobre pacotes. Tal ASIC é o controlador de rede, que por sua vez define o plano de controle de rede.

A razão da necessidade de redes altamente configuráveis é posibilitar regras flexíveis e infraestrutura variáveis sobre demanda, dispensando re-creação da infraestrutura física da rede ou de configuração de roteadores.

A linguagem P4, acrônimo de "programming protocol-independent packet processors" implementa uma API para programar controladores independente do dispositivo alvo, garantindo reconfigurabilidade. É a evolução da linguagem experimental openflow.

A controladora implementa o processamento dos pacotes em quatro etapas:
- Parser: processa e traduz informação dos pacotes
- programa recursos: operações sobre pacotes
- Logica de fowarding: operações sobre direcionamento de pacotes
- egresasmento: reinjeção dos pacotes na rede

Outras aplicações citadas no trabalho:
tunelamento, endereçamento de caminho, firewall, monitoreamnto de link.

O trabalho realizou experimentos para demonstração da linguagem p4:
- Simulação de servidor como load balancer
- simulação de controlador como load balancer
- teste de carga sobre cada implementação.

A maior vantagem de p4 sobre usar servidor de balanceamento é tempo constante para fazer load balance, independente de banda. 

Como pontos positivos, o trabalho apresenta uma tecnologia que pode implementar flexibilidade e escalabilidade para infraestrutura de rede.
Como pontos negativos, houveram apenas pequenos detalhes pontuais e o trabalho não foi possível implementar a proposta inicial de um agregador de pacotes IoT.

--- 

## Titulo: Modelo Preditivo de resultados esportivos do Clube Atlético Mineiro utilizando Redes Neurais
Data: 11/07/2022 16:30h  
Aluno: Augusto Vilaça Alves  
Professor Orientador: Prof. Clodoveu Augusto Davis Junior (DCC - UFMG)  
Professor da banca: Prof. Frederico Gualberto Ferreira Coelho (DEE-UFMG)  
Professor da banca:  Omar Paranaiba Vilela Neto (DCC-UFMG)  

Este trabalho apresenta a metodologia da criação de um modelo preditivo sobre partidas esportivas de futebol, para o clube Atlético Mineiro. Tem como finalidade aplicar técnicas de redes neurais e ciência dos dados para aplicação esportiva. Tem como aplicação, por exemplo, definição de booking em sistemas de apostas.

O trabalho, como o objetivo de prever resultados esportivos, implementa uma rede neural de percéptrons multicamadas, treinado sobre um dataset de temporadas do clube entre 2007 e 2021. Datos foram extraídos de uma plataforma digital utilizando scraping. 

O modelo seleciona características de curto, médio e longo prazo, como por exemplo métricas de desempenho. Dentre elas: time sendo mandante vs convidado; tipo do campeonato: estadual vs brasileirão; colocação média de gols, saldo de gols e vitorias, força de ataque defesa; ranqueamento por prateleiras.

O autor realizou a sintonia de hiperparametos por pesquisa em rede. A rede possui um neurônio de saída que faz classificação para 0 derrota, 0.5 empate, 1 vitória.

Avaliou o modelo utilizando métricas de acurácia.

Como pontos positivos, o trabalho cobriu o ciclo completo de aprendizado estatístico partindo de um problema real e processamento de dados, com dados reais e não toy datasets. Como futebol é um esporte balanceado, bem imprevisível e com resultados aleatórios, com poucas informações.  Dessa forma é um problema difícil.

Como pontos negativos, o autor confundiu features/características com parâmetros. O modelo apresentou baixa acurácia. próxima a 50%, próxima ao aleatório. Mas não desqualifica a metodologia implementada.


