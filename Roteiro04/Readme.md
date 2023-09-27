# Registrador Paralelo/Serial de 4 Bits

Este é um projeto de um Registrador de 4 bits capaz de realizar armazenamento de dados de forma paralela ou serial. O registrador é controlado por um sinal de clock (`clk`) e um sinal de reset (`reset`). Além disso, ele possui entradas e saídas específicas para operações de armazenamento paralelo e serial.

## Descrição das Entradas e Saídas

- **clk:** Sinal de clock para sincronizar as operações do registrador.
- **reset:** Sinal de reset para reiniciar o registrador para o estado inicial.
- **Dado de Entrada Serial (`Din_serie`):** Utilizado quando a seleção (`SEL`) está configurada como 1 (serial). Este sinal representa o dado a ser armazenado sequencialmente nos registradores.
- **Entrada de Seleção (`SEL`):** Utilizada para selecionar o modo de operação do registrador.
  - Quando `SEL` é igual a 0, o registrador opera no modo paralelo.
  - Quando `SEL` é igual a 1, o registrador opera no modo serial.
- **Dado de Entrada Paralela (`Din[3:0]` ou `Din_3`, `Din_2`, `Din_1`, `Din_0`):** Utilizado quando a seleção (`SEL`) está configurada como 0 (paralelo). Estes sinais representam os dados a serem armazenados nos registradores de forma simultânea.
- **Dado da Saída Paralela (`Dout[3:0]` ou `Dout_3`, `Dout_2`, `Dout_1`, `Dout_0`):** A saída do registrador no modo paralelo. Ela reflete os dados armazenados nos registradores quando a seleção (`SEL`) está configurada como 0 (paralelo).

## Funcionamento

O registrador de 4 bits pode operar em dois modos diferentes:

### Modo Paralelo (SEL = 0)

No modo paralelo, os dados são carregados nos registradores de forma simultânea através das entradas de dados de entrada paralela (`Din[3:0]`). O dado de saída paralela (`Dout[3:0]`) refletirá os dados armazenados no registrador após a borda de clock apropriada.

### Modo Serial (SEL = 1)

No modo serial, os dados são carregados sequencialmente nos registradores a cada pulso de clock, começando pelo bit mais significativo e indo até o bit menos significativo. O dado de entrada serial (`Din_serie`) é usado para alimentar os dados sequencialmente. O dado de saída paralela (`Dout[3:0]`) também refletirá os dados armazenados no registrador após cada pulso de clock.
