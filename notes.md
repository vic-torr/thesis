# Planning

## Related paper:

- Uses CNN also:
Marcu, A.; Costea, D.; Slusanschi, E.; Leordeanu, M. A multi-stage multi-task neural network for aerial scene interpretation and
geolocalization. arXiv 2018, arXiv:1804.01322.



## Ideas

- SEARCH FOR REPO OF THE PAPER  
- Dataset urbano!!

# Add

## Introduction
## Theorical revision

- the lack of labaled datasets con stuck improvements in applications  
- Talk about how imagenet contest and huge dataset boosted development in cnn and deeplearning  


## Methodology

- first replicate work in the paeper to garantee corectness  
- get datasets of the paper to compare  
- get datasets in brbr with variability of season year camera hour taken  
- Describe method:  
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
- selected xception with aditional fully connected layers with dropout for aditional regularization and capacity
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
distribution further. Multi-modal distributions, as in mixture density networks, may be able to better encapsulate uncertainty caused by distant locations being visually similar.

## Future works:
- Use gan for data augumentation for variability of camera, climate, night, 





# Apresentação Final (video pitch)

Vídeo no formato "pitch" (i.e., onde você tenta "vender seu peixe"), com duração de 3 a 5 minutos, onde você aborda os seguintes aspectos do seu trabalho:

    A proposta do trabalho (What)
        
    A motivação para o trabalho (Why)
    O método usado (How)
    Resultados e discussão
    Conclusão

Pontos importantes:

Notem que fazer uma boa apresentação onde todos os tópicos acima são cobertos de forma clara num intervalo de tempo tão curto (até 5 minutos) é um desafio que requer um bom planejamento. Portanto, não se trata de simplesmente entrar na frente do celular e falar, por até 5 minutos, a primeira coisa que lhe vem à cabeça a respeito do que foi feito ao longo do semestre.
A ideia é que você faça um vídeo onde você aparece fazendo a apresentação dos slides como se você estivesse apresentando para uma plateia. No entanto, caso você não queira fazer deste modo, você pode usar algum software de captura de tela (e.g., https://obsproject.com/) para gravar um vídeo da apresentação dos slides na tela do computador, com a sua narração. No entanto, neste caso, você deve aparecer pelo menos no começo do vídeo apresentando o slide de título, para efeito de confirmação de sua identidade.
Faça o upload do arquivo de vídeo para algum serviço de hospedagem de vídeos (e.g., Youtube), coloque o link do vídeo num arquivo texto e faça a entrega apenas do arquivo texto. Caso você não queira que o vídeo fique disponível a todos na Internet, ao fazer o upload do arquivo de vídeo você pode fazê-lo no modo unlisted (não listado), de forma que apenas as pessoas com acesso ao link conseguirão visualizar o vídeo.



![](../2022-02-22-23-27-36.png)


![](NN.png)


![](Imagens/2022-02-22-23-30-03.png)


![](Imagens/NN.png)




