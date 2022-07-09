# Planning

## Ideas


## Datasets:
Understanding the Amazon from Space [20] — multilabel dataset to track the human footprint
in the Amazon rainforest; we’ll mostly refer to this as the Amazon dataset.
WiDS Datathon 2019 [21] — binary dataset for oil palm plantation detection in Borneo;
we’ll mostly refer to this as the oil palm dataset.
Towards Detecting Deforestation [22] — binary dataset for detecting coffee plantations in
the Amazon rainforest; we’ll mostly refer to this as the coffee dataset.


- argumentar necessidade do modelo para imagens de alta resolução (> 250m) e RGB.

- centro de sensoriamento remoto inpe ufmg

- Uma direção possível é detectar somente balsas garimpeiras do rio madeira pelas imagens
  de alta resolução do CBERS-4A, segundo relatorio do mapbiomas

Mining drives extensive deforestation in the
Brazilian Amazon

Mining poses significant and potentially underestimated risks to tropical forests worldwide. In Brazil’s Amazon, mining drives deforestation far beyond operational lease boundaries, yet the full extent of these impacts is unknown and thus neglected in environmental licensing. Here we quantify mining-induced deforestation and investigate the aspects of mining operations, which most likely contribute. We find mining significantly increased Amazon forest loss up to 70 km beyond mining lease boundaries, causing 11,670 km2 of deforestation between 2005 and 2015. This extent represents 9% of all Amazon forest loss during this time and 12 times more deforestation than occurred within mining leases alone. Pathways leading to such impacts include mining infrastructure establishment, urban expansion to support a growing workforce, and development of mineral commodity supply chains. Mining-induced deforestation is not unique to Brazil; to mitigate adverse impacts ofk mining and conserve tropical forests globally, environmental assessments and licensing must considered both on- and off-lease sources of deforestation.




http://terrabrasilis.dpi.inpe.br/app/map/deforestation?hl=pt-br


>>

Artificial Intelligence

Deforestation invariably leads to many plants and animals losing their natural habitat, resulting in ecological imbalance and threat to the environment.

Problem statement

Create a solution to improve existing environment models or figure out new ways to anticipate deforestation rate of forests using images to see how the government is meeting
their commitment to the environment.

Tech Stack

1. Artificial intelligence

Task

1. Track whether environment-related goals are being met
2. What is the progress in achieving the goals
3. Image analysis on Satellite data
4. Predict the rate of deforestation


Submission format

1. Source code in a zip folder
2. Related documents and PDFs
3. Used dataset
4. PPT for idea submission and final presentation


ihttps://github.com/DS3Lab/forest-prediction
https://sites.psu.edu/2050destruction/2018/04/12/deforestation/



https://becominghuman.ai/can-we-predict-deforestation-in-amazon-forests-with-machine-learning-2dc7785e5e49





Star methodology



# Thesis
0 - read papers
1 - first version: sketch
2 - second version: grinding/prunning
3 - third party text review
4 - review correction
5 - Tutor review
x - Done

1. [40%] Pre textuals
   1. Cape
   2. Abstract Pt+ en
   3. Tables of symbols, abreviations
2. [80%] Introduction
3. [60%] Revision
4. [60%] Methodology
5. [0%] Experiments
6. [0%] Results
7. [0%] Conclusion

## Introduction
 - [X] Text
   - [X] Contextualization
   - [X] Problem introduction
   - [X] Objective
 - [X] Illustrations
 - [X] Review to remove specialists def

## Theoretical revision + Literature review

- [X] Intro to chapter
- [X] Problem domain
  - [ ] Amazon issue
  - [X] Remote sensing
  - [X] Intersection ML
- [ ] Theoretical revision & definitions
  - [X] Machine Learning:
    - [X] Definition
    - [X] classification
    - [X] Metrics
      - [X] Accuracy, f1 pr
      - [X] Equations
    - [X] Semi supervised
    - [X] PreProcess
    - [X] Feature extractor
    - [X] Regularization
    - [X] overfit,
    - [X] underfit
    - [X] generalization
    - [X] Cross validation
    - Model selection
- [X] Deep Learning
  - [X] ANN:
    - perceptron/logistic regression,
  - [X] Deep learning:
    - [ ] Foward pass
    - [ ] Loss Function
    - [ ] Backward pass
    - [ ] Weight update
    - [ ] Stochastic gradient descent
    - [X] Equations
  - [X] CNN:
    - Convolutional
    - Pooling
    - Fully connected
    - sigmoid
    - Image
  - [X] Transfer Learning/ pre trainning
  - [X] Feature extractor
  - [ ] Transformer
    - [X] Historical contex
    - [ ] Architechture:
      - [X] patches
      - [X] embeddings
      - [X] encoder
      - [ ] mlp heads
    - [X] Visual transformers

- [90%] Literature SOTA review about the problem
  - [X] Previous papers
    - [X] Paper 1 Pre train Vitae2
    - [X] Paper 2 Dam detection
    - [X] Paper 3: Deforestation Monitoring
  - [X] Tools: pytorch


# Methodology
1. [70%] Datasets
   1. [ ] Add Images
   2. [ ] Origin of datasets
   3. [ ] Table summaring them
2. Premisses
3. Proposed solutions
   1. [ ] Images of architecture
4. Environment and tools
5. Experiments
  - [ ] Steps
  - [ ] Resume
  - [ ] Baseline
  - [ ] Pipeline


## 1. Datasets
- Million A1
- Understanding the Amazon from Space [20] — multilabel dataset to track the human
  footprint in the Amazon rainforest; we’ll mostly refer to this as the Amazon dataset.
WiDS Datathon 2019 [21] — binary dataset for oil palm plantation detection in Borneo;
we’ll mostly refer to this as the oil palm dataset.
Towards Detecting Deforestation [22] — binary dataset for detecting coffee plantations in
the Amazon rainforest; we’ll mostly refer to this as the coffee dataset.

## 2. Premisses
As premisses, already mentioned on literature review, we have:
- limited hardware
- variability images caused by:
  - sensor
  - weather
  - rotation
  - light
  - angle of camera
  - changinges on soil
- Limited dataset of region of interest with lack of covering on all variations
## 3. Proposed solutions
To overcome limitation on hardware and enough dataset to generalize over all possible
variations, we propose the following solution:
- Our solution
  - pre-trained model on dataset milllion + last layers trained with our geo spatial
    dataset
  - applying regularization and model compression, evaluate application to embedeed
    systems
  - Experimenting to find the best model, best regularization and tunning

## 4. Environment and tools
We will use pytorch since it has a broad adoption on market and academy and with it large
ammount of tools and resources already developed applied to computer vision. It will be
developed on a jupyter notebook for each experiment and replicable.
## 5. Experiments

- Experiments in increasing complexity
- First replicate work in the paper 2 to guarantee correctness (hardtask since it is 80gb
  dataset)
  - simplify with just one map (it doesn't generalizes enough)
  - try to ask repo to replicate, if not, replicate by myself ( kinda hard)
- Replicate method of paper 2 within paper 1 (optional)
- Get method of paper 3, with pre-trained CNN train to speciefic map using method of paper
  2 on dataset of 1
- First test with geo images, then validate with drone images
- include illustrations of all experiments
- Investigate multi modal distribuition

In resume:
  1. Replicate experiments from papers (Doc only if needed)
  2. Replicate experiment 0 with our dataset (Doc only if needed)
  3. Replicate experiment 0 with our dataset & pre-trained net (Doc only if needed)
  4. Training with minimal fine-tunning and validate of 3 with split cross validation on
     geo datasets
  5. Same as 4, but dataset including data augmentation with rotation (wont do)
  6. Evaluate performance of 3 with our drone dataset
  7. Evaluate performance of 3 with our drone dataset on nvidia jetson (only if needed)




## Experiment 0 (Experiments from papers):
 - Replicate experiment from paper 2
 - Replicate experiment from paper 3 (optional)
## Experiment 4 (Experiment from paper 2 with our dataset + pre-trained + model):
- Pre process:
  - Get 2000 random crops and latitude & longitude as labels scaled to 0-1 minmax scaler
  - Offline down sampling by cubic interpolation, Online by bi linear interpolation
  - Down sample to the input of the model
  - Maybe saved to jpegs to reduce file size -> questionable decision ( artifacts
    consistent in training & testing)
  - test Xception and nets from paper 3
- Training:
  - Geolocation images
  - minimal finetune
  - performance as mean absolute error
  - 500 epochs
  - use pre-trained net with additional fully connected layers with dropout/prunning for
    regularization and capacity
  - distribuition output, likelyhood loss based log function
- Validation
  - Test replicability (How?)
  - Performance metrics for regression
  - Table comparing performance with paper 1 and related results


- Original Paper 2 methodology:
  - for each dataset 2000 random 3x3 km crops taken from ROI
  - Downsampled to 1000x1000px
  - croped again to random 1.5x1.5km 224px
  - latitude and longitude as label of image center scaled to 0-1 min max scaler
  - flat world assumption
  - offline downsampling done by cubic interpolation
  - online down done by bi linear interpolation
  - crops saved as jpegs to reduce file size -> questionable decision
  - sampling and jpeg can introduce artifacs but are consistent in traning and testing
  - origin paper test many nets
  - use only one dataset to compare models
  - minimal fine tune
  - performance as mean absolute error
  - 500 epochs
  - selected xception with aditional fully connected layers with dropout for aditional
    regularization and capacity
  - distribuition output, likelyhood based log function
  - to product std output
  - image ilustrating method
  - table comparing performance
  - compare field view
  - comparing loss function: msqe, euclidean dist, RMSE
  - test replicability
  - past paper had encouraging results with limited tuning
  - relative large error on sample input but small on ROI: 100m over 33x33km2
  - also added a measure of uncertainty as output std
  - likelyhood loss model might improved training time
  - it create variability from cropping
  - Future work may wish to investigate choice of output
  distribution further. Multi-modal distributions, as in mixture density networks, may be
  able to better encapsulate uncertainty caused by distant locations being visually
  similar.


## Discution:
CNN may be ill suited for regression/location (coordconv)
For classification on remote sensing just cnn isnt enought, due high variability intraset,
and similarity outter set. Needs contextual information, then transformers may fit.

## Future works:
- Use gan for data augmentation for variability of camera, climate, night, height,
  rotation
- CNN may be ill suited for regression/location (coordconv)
- Newer datasets will provide better models. Data driven vs quality driven models



# Apresentação Final (video pitch)

Vídeo no formato "pitch" (i.e., onde você tenta "vender seu peixe"), com duração de 3 a 5 minutos, onde você aborda os seguintes aspectos do seu trabalho:

##    A proposta do trabalho (What)
A proposta deste trabalho é usar visão computacional e criar um modelo de localização visual, similar como pilotos se localizam.
##    A motivação para o trabalho (Why)
Localização visual é um potencial backup para sistemas de navegação de drones ou aeronaves em espaços onde não há a disponibilidade de GPS, seja por interferência de ilhas urbanas, sinais refletidos, por indisponibilidade de satélites, ou mesmo por guerra eletrônica, em que pode haver negação de sinal por jamming ou mesmo spoofing, que é um sinal falsificado.
##    O método usado (How)
Este trabalho propôe uma solução por deep learning, utilizando uma rede neural pré
treinada e treinada com imagens geoespaciais localizadas da região de interesse. Ela realiza uma regressão das coordenadas dada a imagem de entrada.
##    Resultados e discussão
Nos resultados será avaliado o desempenho e comparado com outros modelos encontrados na
literatura.
##     Conclusão
Este trabalho colocará em prática conhecimentos de aprendizado de máquina, redes neurais e reconhecimentos de padrões.


________________

# Rascunho desenvolvimento








__________

# Rascunho Introdução





Segundo o MapBiomas (https://plataforma.brasil.mapbiomas.org/):
-
A área de garimpos terrestres na bacia do rio Madeira saltaram de 3753 ha em 2007 para
9660 ha em 2020, uma expansão de 5907 hectares (que equivale a mais 8200 campos de
futebol).
- A área de garimpos detectados para o ano de 2020 é o recorde da série de dados, que
  conta com 36 anos de imagens de satélite.

- A Amazônia concentra 94\% (mais de 100 mil hectares) da área garimpada brasileira, sendo
  mais de 50\% potencialmente ilegais, por ocorrerem dentro em Terra Indígenas e Unidades
  de Conservação. A área de garimpo no bioma cresceu 10x nas últimas três décadas, com
  301\% de expansão em UCs e 495\% em TIs.

O Brasil pertence a um seleto grupo de países capazes de
desenvolver, operar e utilizar satélites e seus dados. Nessa área o
país pode se orgulhar da posição que ocupa. Somos um dos países
que melhor monitora seu território, em diferentes recortes do
tempo e do espaço, atendendo a diferentes necessidades da
sociedade civil, da academia ou do mercado financeiro.
Para tal, usamos satélites nacionais, como o CBERS-4A e o
AMAZÔNIA-1 (ambos desenvolvidos pelo INPE), e internacionais,
sejam públicos (casos do Landsat, da NASA, e do Sentinel, da ESA)
ou privados (como os nanossatélites da empresa Planet), isso para
manter curta a lista de exemplos. Somos capazes, portanto, de
observar e monitorar balsas garimpeiras ao longo de um rio.


O garimpo ilegal na Amazônia deve ser monitorado, combatido e eliminado.
-
O uso de imagens de satélite de alta resolução espacial (como a do CBERS-4A desenvolvido pelo INPE) pode ser utilizado para monitorar a dinâmica de balsas garimpeiras na Amazônia e auxiliar na fiscalização, combate e controle dos ilícitos ambientais.
-
Combinações de múltiplos satélites, de média e alta resolução, do espectro óptico e radar, devem ser exploradas para aumentar a frequência de observação e a capacidade de
monitoramento de balsas garimpeiras, mesmo em condições de intensa nebulosidade.
-
Outras inovações tecnológicas, como classificadores de aprendizado profundo (Deep Learning), devem ser exploradas para facilitar e automatizar a detecção das balsas garimpeiras e de seus
impactos associados.


3. Método
Fusão de dados óticos e interpretação visual Foi utilizado uma imagem única de 25 de Outubro de 2021, do satélite CBERS-4A, do sensor WPM, com 2 metros de resolução após fusão das bandas pan + RGB, para identificar visualmente as balsas garimpeiras no rio Madeira, no trecho ao norte de Borba, no Amazonas. O CBERS-4A é um satélite nacional, desenvolvido pelo INPE, gratuito e com imagens de todo o território brasileiro
disponíveis na internet. Trata-se do satélite público de maior resolução espacial do
planeta.

---


The projected economic mitigation potential of AFOLU options between 2020 and 2050, at costs below USD100 tCO2-eq-1, is 8-14 GtCO2-eq yr-1 [FOOTNOTE 61] (high confidence). 30-50\% of this potential is available at less than USD20/tCO2-eq and could be upscaled in the near term across most regions (high confidence). The largest share of this economic potential [4.2-7.4 GtCO2-eq yr-1] comes from the conservation, improved management, and restoration of forests and other ecosystems (coastal wetlands, peatlands, savannas and grasslands), with reduced deforestation in tropical regions
having the highest total mitigation. IPCC 2022

IPCC, 2022: Summary for Policymakers [H.-O. Pörtner, D.C. Roberts, E.S. Poloczanska, K.
Mintenbeck, M. Tignor, A. Alegría, M. Craig, S. Langsdorf, S. Löschke, V. Möller, A. Okem
(eds.)]. In: Climate Change 2022: Impacts, Adaptation, and Vulnerability. Contribution of
Working Group II to the Sixth Assessment Report of the Intergovernmental Panel on Climate
Change [H.-O. Pörtner, D.C. Roberts, M. Tignor, E.S. Poloczanska, K. Mintenbeck, A.
Alegría, M. Craig, S. Langsdorf, S. Löschke, V. Möller, A. Okem, B. Rama (eds.)].
Cambridge University Press. In Press.

Rascunho introdução

- contextualização do desmatamento da amazônia e pantanal
- amazonia chegando perto do ponto de inflexão
  https://www.nature.com/articles/d41586-020-00508-4
- ciclo do carbono e armazenamento
evidencias que esse dano já está acontecendo

- causado por fatores antropicos
- desmatamento pra area de gado, pra mateiras raras, mineração e garimpo
- invasão de terras indigenas por disputas territoriais
- estatisticas de taxas
- estatistica do tanto que foi devastado
- importancia do monitoramento para politicas publicas
- centro de sensoriamento remoto ufmg, site de monitoramento amazonia
- inpe e ibama
- como são monitorados: satelites, definição de sensoriamento remoto
- como é possivel automatizar detecção desses eventos por meio de visão computacional
- modelos como cnn, resnet possibilitaram grande avanço
- atualmente a classe de transformers visuais tem tomado espaço por tomarem informações
  contextuais, além precisar de menos amostras de treino
- contudo aplicado a sensoriamento remoto pode ser dificultado por escassez de amostras
  rotuladas,
- além de variabilidades de imagem devido a diferentes sensores

- esse trabalho tem como objetivo estudar a aplicação de transformers visuais pré
  treinados com imagens de satélite são apropriados para
- aplicaçoes de detecção de eventos na amazonia
- reduzir pode ser a melhor medida de mitigação contra aquecimento global, citar IPCC2022





Every minute, the world loses an area of forest the size of 48 football fields. And deforestation in the Amazon Basin accounts for the largest share, contributing to reduced biodiversity, habitat loss, climate change, and other devastating effects. But better data about the location of deforestation and human encroachment on forests can help governments and local stakeholders respond more quickly and effectively. Planet, designer and builder of the world’s largest constellation of Earth-imaging satellites, will soon be collecting daily imagery of the entire land surface of the earth at 3-5 meter resolution. While considerable research has been devoted to tracking changes in forests, it typically depends on coarse-resolution imagery from Landsat (30 meter pixels) or MODIS (250 meter pixels). This limits its effectiveness in areas where small-scale deforestation or forest degradation dominate. Furthermore, these existing methods generally cannot differentiate between human causes of forest loss and natural causes. Higher resolution imagery has already been shown to be exceptionally good at this, but robust methods have not yet been
developed for Planet imagery.

In this competition, Planet and its Brazilian partner SCCON are challenging Kagglers to label satellite image chips with atmospheric conditions and various classes of land cover/land use. Resulting algorithms will help the global community better understand where, how, and why deforestation happens all over the world - and ultimately how to respond. To dig into/explore more Planet data, sign up for a free account. And if you're
interested in building applications on Planet data, check out our Application Developer
Program.
Getting Started

    Review the data page, which includes detailed information about the labels and the
    labeling process. Download a subsample of the data to get familiar with how it looks.
    Explore the subsample on Kernels. We’ve created a notebook for you to get started.




Every minute, the world loses an area of forest the size of 48 football fields. And
deforestation in the Amazon Basin accounts for the largest share, contributing to reduced
biodiversity, habitat loss, climate change, and other devastating effects. But better data
about the location of deforestation and human encroachment on forests can help governments
and local stakeholders respond more quickly and effectively.

Planet, designer and builder of the world’s largest constellation of Earth-imaging
satellites, will soon be collecting daily imagery of the entire land surface of the earth
at 3-5 meter resolution. While considerable research has been devoted to tracking changes
in forests, it typically depends on coarse-resolution imagery from Landsat (30 meter
pixels) or MODIS (250 meter pixels). This limits its effectiveness in areas where
small-scale deforestation or forest degradation dominate.

Furthermore, these existing methods generally cannot differentiate between human causes of
forest loss and natural causes. Higher resolution imagery has already been shown to be
exceptionally good at this, but robust methods have not yet been developed for Planet
imagery.

In this competition, Planet and its Brazilian partner SCCON are challenging Kagglers to
label satellite image chips with atmospheric conditions and various classes of land
cover/land use. Resulting algorithms will help the global community better understand
where, how, and why deforestation happens all over the world - and ultimately how to
respond.

To dig into/explore more Planet data, sign up for a free account.

And if you're interested in building applications on Planet data, check out our
Application Developer Program.
Getting Started

    Review the data page, which includes detailed information about the labels and the
    labeling process.
    Download a subsample of the data to get familiar with how it looks.
    Explore the subsample on Kernels. We’ve created a notebook for you to get started.





In summary, we have revealed empirical evidence that the
Amazon rainforest has been losing resilience since the early 2000s,
risking dieback with profound implications for biodiversity, carbon
storage and climate change at a global scale. We further provided
empirical evidence suggesting that overall drier conditions, culmi-
nating in three severe drought events, combined with pronounced
increases in human land-use activity in the Amazon, probably played a crucial role in the
observed resilience loss. The amplified
loss of Amazon resilience in areas closer to human land use suggests
that reducing deforestation will not just protect the parts of the for-
est that are directly threatened but also benefit Amazon rainforest
resilience over much larger spatial scales

% INPE


% - DETER B INPE Este documento apresenta a metodologia para o sistema DETER- B como parte
% do plano de desenvolvimento do Sistema DETER (Detecção de Desmatamento em
% Tempo Quase Real). Atualmente, o DETER utiliza imagens do sensor MODIS/TERRA,
% com alta frequência temporal, mas limitada resolução espacial (250 m), para
% mapeamento diário das áreas desflorestadas em formações florestais na Amazônia.
% Para organizar o processo de aprimoramento dos sistemas de alerta do INPE o DETER
% baseado no MODIS, que tem como área mínima de mapeamento de 0,25 km2 (25 ha)
% passa a ser denominado DETER-A. A exatidão dos alertas do Sistema DETER-A é maior
% que 90\%, sendo que aproximadamente 65% correspondem a desmatamento por corte
% raso e 30\% a evidências de degradação florestal (INPE, 2008).
% Deste modo, dentro da família de sistemas de alerta, pretende-se desenvolver e
% operacionalizar dois novos sistemas, o DETER-B que utilizará sensores com resolução
% de 60m e o DETER-C com dados de sensores da classe LANDSAT, de 20 a 30 m.


% plataforma mapbiomas




% ---
% Segundo o MapBiomas (https://plataforma.brasil.mapbiomas.org/):
% -
% A Amazônia concentra 94% (mais de 100 mil hectares) da área
% garimpada brasileira, sendo mais de 50% potencialmente ilegais, por
% ocorrerem dentro em Terra Indígenas e Unidades de Conservação.
% A área de garimpo no bioma cresceu 10x nas últimas três décadas,
% com 301% de expansão em UCs e 495% em TIs.                                    
% -
% A área de garimpos terrestres na bacia do rio Madeira saltaram de
% 3753 ha em 2007 para 9660 ha em 2020, uma expansão de 5907
% hectares (que equivale a mais 8200 campos de futebol).
% -
% A área de garimpos detectados para o ano de 2020 é o recorde
% histórico da série de dados, que conta com 36 anos de imagens de
% satélite.


% O Brasil pertence a um seleto grupo de países capazes de
% desenvolver, operar e utilizar satélites e seus dados. Nessa área o
% país pode se orgulhar da posição que ocupa. Somos um dos países
% que melhor monitora seu território, em diferentes recortes do
% tempo e do espaço, atendendo a diferentes necessidades da
% sociedade civil, da academia ou do mercado financeiro.
% Para tal, fazemos uso de satélites nacionais, como o CBERS-4A e o
% AMAZÔNIA-1 (ambos desenvolvidos pelo INPE), e internacionais,
% sejam públicos (casos do Landsat, da NASA, e do Sentinel, da ESA)
% ou privados (como os nanossatélites da empresa Planet), isso para
% manter curta a lista de exemplos. Somos capazes, portanto, de
% observar e monitorar balsas garimpeiras ao longo de um rio.


% O garimpos ilegal na Amazônia deve ser monitorado, combatido e eliminado.
% -
% O uso de imagens de satélite de alta resolução espacial (como a do CBERS-4A desenvolvido pelo
% INPE) pode ser utilizado para monitorar a dinâmica de balsas garimpeiras na Amazônia e
% auxiliar na fiscalização, combate e controle dos ilícitos ambientais.
% -
% Combinações de múltiplos satélites, de média e alta resolução, do espectro óptico e radar,
% devem ser exploradas para aumentar a frequência de observação e a capacidade de
% monitoramento de balsas garimpeiras, mesmo em condições de intensa nebulosidade.
% -
% Outras inovações tecnológicas, como classificadores de aprendizado profundo (Deep Learning),
% devem ser exploradas para facilitar e automatizar a detecção das balsas garimpeiras e de seus
% impactos associados.




% 3. Método
% Fusão de dados óticos e interpretação visual
% Foi utilizado uma imagem única de 25 de Outubro de 2021, do satélite CBERS-4A, do sensor WPM, com 2 metros
% de resolução após fusão das bandas pan + RGB, para identificar visualmente as balsas garimpeiras no rio Madeira,
% no trecho ao norte de Borba, no Amazonas.
% O CBERS-4A é um satélite nacional, desenvolvido pelo INPE, gratuito e com imagens de todo o território brasileiro
% disponíveis na internet. Trata-se do satélite público de maior resolução espacial do planeta.

% ---



Aqui, deixa eu te explorar um pouco?
Rem como revisar o texto do meu pre-tcc?
kkkkkkkkkkkkkkk

Eu atrasei muuuito mesmo e me deram uma ultima chance pra entregar amanhã, mas tenho só
essa chance mesmo. O orientador não vai conseguir revisar a tempo.

E não precisa revisar se estiver sem tempo, pq pedi pra algumas pessoas em paralelo, é só
se for possível meeesmo!
Brigadão :D

É só deixar destacado ou comentar no pdf o que não achou inteligível ou não deu pra
entender. Ele é pra ser compreendido mesmo por quem não é da área.