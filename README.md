# Sistemas Embarcados (SSC0740) - Trabalho 2
## Introdução

Esse projeto é relativo à disciplina de Sistemas Embarcados (SSC0740) ministrada no segundo semestre do ano de 2021 pelo Prof. Dr. Vanderlei Bonato na Universidade de São Paulo.
Os alunos responsáveis pelo projeto estão na tabela abaixo abaixo:

Alunos | NUSP
-------|------
Leonardo Cerce Guioto | 10716640
Luis Fernando Costa de Oliveira | 10716532
Rodrigo Augusto Valeretto | 10684792

## Instruções de execução

Instalar os seguintes pacotes pré-requisitos:

```
sudo apt-get install autoconf automake autotools-dev curl python3
libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex
texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev
```

Clonar o repositório da toolchain:

```
git clone https://github.com/riscv/riscv-gnu-toolchain
```

Escolher onde será instalado a toolchain e adicionar o caminho/bin ao PATH. Por exemplo, se instalado em opt/riscv, adicione opt/riscv/bin ao PATH. Em seguida, basta executar o seguinte comando:

´´´
./configure --prefix=/opt/riscv --with-arch=rv32i --with-abi=ilp32
make
´´´

A toolchain agora está configurada. O próximo passo é instalar o GHDL, o que pode ser feito com o seguinte comando:
´´´
sudo apt-get install ghdl gtkwave
´´´

Em sim/simple/ghdl.run.sh, muda-se o --stop-time para 300 ms

Com isso, tudo foi configurado; agora é preciso obter os arquivos do processador escolhido (NEORV32) e adicionar a pasta de códigos dos discentes à pasta de exemplos do processador (neorv32\sw\example).

Para executar o filtro extrator de contornos, basta executar o seguinte comando:

´´´
make USER_FLAGS+=-DUART0_SIM_MODE MARCH=rv32ic clean_all sim
´´´
