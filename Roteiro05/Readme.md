## Problema 1 – Contador Up/Down

Construção de um Contador Síncrono Hexadecimal de 4 bits que permite a contagem crescente ou decrescente, dependendo da entrada de seleção.

### Entradas e Saídas

- `clk` (Clock): Entrada de pulso de clock para sincronização.
- `reset`: Entrada para redefinir o contador.
- `Seleção de Contagem`: Entrada que define se a contagem é crescente ou decrescente.
- `Saída`: A saída é um valor hexadecimal de 4 bits que representa o estado atual do contador.

## Problema 2 – Câmeras de Vigilância

Implementação um circuito digital que controla a transmissão de vídeos de câmeras de vigilância em 9 setores de uma empresa.

### Funcionamento

- A cada pulso de clock, o circuito aciona a transmissão de vídeos de 3 câmeras por vez.
- A transmissão começa com as câmeras dos setores 0 a 2, depois 3 a 5 e assim por diante.

## Problema 3 – Semáforo "Simples"

Este circuito implementa um semáforo simples que muda a cor ativada (verde, amarelo ou vermelho) com base em um temporizador (relógio).

### Funcionamento

- A cada pulso de clock, o circuito ativa uma das cores de acordo com um temporizador predefinido.

## Problema 4 – Detector de Início de Mensagem

Este circuito digital detecta o início de uma mensagem em um sistema de comunicação.

### Entradas e Saídas

- `Entrada`: Linha de entrada que contém os bits de dados a serem analisados.
- `S`: Saída que se torna 1 quando a entrada contém quatro bits consecutivos iguais a 1 durante quatro ciclos de clock consecutivos.
