É necessário ter o Python instalado na máquina!

Como usar:

Para compilação do arquivo verilog em sua prórpia máquina, você precisa do [Compilador Verilog](https://bleyer.org/icarus/iverilog-v12-20220611-x64_setup.exe) instalado.
Escreva ou copie seus códigos da máquina de mealy e de moore nos respectivos arquivos na pasta "mealy.v" e "moore.v" e execute o arquivo "compile.py" com o comando "py compile.py" no terminal.

Você pode utilizar o EDA Playground ao invés do Compilador Verilog, copiando e colando o código do arquivo "testbench.v" (sem as primeiras linhas com os includes, apenas o módulo) no EDA Playground, executando, copiando a saída impressa no terminal do site e colando no arquivo "output.csv" da pasta e, por fim, executando o arquivo "accuracy.py" com o comando "py accuracy.py".
