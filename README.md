# 🧬💰 Expectativa de Vida e Renda  - Regressão Linear 📊

O objetivo desse projeto é de fazer a modelagem de dados da Expectativa de vida e Renda de diversos países, com base em variáveis como Escolaridade das pessoas, e ver suas relações.

Utilizei uma base de dados do [Kaggle](https://www.kaggle.com/datasets/kumarajarshi/life-expectancy-who?datasetId=12603&language=R) com 2939 amostras, e apliquei regressão linear simples.

## Resultados
### Renda x Escolaridade - dispersão
![image](https://github.com/kamillyruseler/Predicao_regressao_linear/assets/107367118/478a1b7b-8798-42a1-a465-3a0c7cc54e50)
r = 0,78474
Correlação forte!
IC(95%) = (0.7654 a 0.8026)

![image](https://github.com/kamillyruseler/Predicao_regressao_linear/assets/107367118/4705b963-944b-4f3a-b978-8a838357c127)

Residual standard error = 1.733
Isso indica que o modelo pode ser usado para representar os valores!

R² = 0.6158 
Correlação moderada, mostrando que há uma certa relação entre os dados!


### Expectativa de vida x Escolaridade
![image](https://github.com/kamillyruseler/Predicao_regressao_linear/assets/107367118/6702e194-4afe-4eaf-b437-053db155d316)

r  = 0.72763 
Correlação forte!
IC(95%) = (0.7040 a 0.7495)

![Uploading image.png…]()
Residual standard error = 6.036
Isso é um indicativo que o modelo não é adequado para representar os valores!

R² = 0.5294
Indica uma ligeira correlação, não podendo afirmar que é um bom ajuste de modelo

## Conclusões
Conseguimos concluir que um modelo de regressão para ajustado para Renda x Escolaridade consegue ser um bom estimador. 

Já o modelo de regressão para Expectativa de vida x Escolaridade, apesar de crescer linearmente , se dispersa muito não podendo gerar boas estimativas.
Possivelmente se utilizássemos outras variaveis no lugar da Escolaridade (ajustando um  modelo com múltiplas variáveis independentes) , poderíamos ter realizado uma estimativa melhor para a Expectativa de vida.

