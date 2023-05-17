<p align="center">
    <img src="https://github.com/Maelton-SI/lua/blob/main/Images/Lua-Logo.svg.png">
</p>

# História da Linguagem

Lua é uma Linguagem de extensão (script) utilizada para aumentar a capacidade de outras linguagens.
Foi criada, tendo sua primeira versão finalizada em 1993 (versão 1.0), dentro do TECGRAF (Grupo de Tecnologia em Computação Gráfica) da PUC - RJ (Pontifícia Universidade Católica do Rio) pelos pesquisadores Roberto Ierusalimschy, Luiz Henrique de Figueiredo e Waldemar Celes, atualmente está na versão 5.4.4 lançada em 26 de janeiro de 2022. É uma linguagem inteiramente projetada, implementada e desenvolvida no Brasil.
A motivação para criar uma nova linguagem de programação veio da necessidade de ter uma linguagem leve, flexível e fácil de integrar com outras linguagens;

# Características da Linguagem
    - Robusta: Apesar de ser uma linguagem simples está presente em diversas aplicações tais como Adobe 
    Photoshop Lightroom, jogos (Roblox, Angry Bird, World of Warcraft) e em sistemas embarcados 
    (Middleware Ginga), Utilizado em IPTV;
    - Rápida;
    - Tipada Dinamicamente: Não é necessário especificar o tipo da variável ao declará-la
    - Fracamente Tipada: A linguagem não é muito rígida em relação ao tipos
    - Portátil: É suportada tanto por sistemas baseados em UNIX (MAC ou Linux) assim como Windows, além de 
    sistemas operacionais de dispositivos mobile (IOS, Android, Windows Phone…);
    - Embutível: Pode ser utilizada com várias linguagens (C, C++, C#, JAVA, Ruby, Pear…);
    - Simples e extensível: Apesar de ser uma linguagem simples tem muitas aplicações por ser fundamentada em 
    meta mecanismos, possibilitando mudar o comportamento padrão da linguagem e assim tornando a linguagem 
    MULTIPARADIGMA (programação procedural, programação orientada a objetos, programação funcional, 
    programação orientada a dados e descrição de dados).
    - Pequena: O pacote Lua, versão 5.4.4, ocupa 1,3 MB contendo código fonte e documentação.
    - Open Source: além de ser um software que pode ser usado por qualquer pessoa sem custos existe também 
    uma comunidade na qual você pode criar e compartilhar bibliotecas e ferramentas para a linguagem; 

# Preparação do ambiente:

## Windows

Para Windows existe o "luaforwindows" que disponibiliza bibliotecas tanto padrão como outras, um
editor de texto, e também os binários para utilização dos comandos da linguagem.

O instalador pode ser baixado do seguinte link: [LuaForWindows](https://github.com/rjpcomputing/luaforwindows/releases)

Página GitHub
<p align="center">
    <img src="https://github.com/Maelton-SI/lua/blob/main/Images/pagina_luaforwindows.png">
</p>

### 1° passo

Baixar o instalador
<p align="center">
    <img src="https://github.com/Maelton-SI/lua/blob/main/Images/instalador_lua.png">
</p>

### 2° passo

Executar o instalador

### 3° passo

Aceitar o termos e clicar em "Next"

<p align="center">
    <img src="https://github.com/Maelton-SI/lua/blob/main/Images/execucao_instalador.png">
</p>

### 4° passo

Escolher o local de instalação

<p align="center">
    <img src="https://github.com/Maelton-SI/lua/blob/main/Images/local_de_instalacao.png">
</p>

obs: caso queira mudar o local de instalação basta clicar em "Browser", o explorador de 
arquivo será aberto e você pode escolher o caminho que achar mais adequado

Por fim clique em "Next"

### 5° passo

Logo em seguida você pode escolher o que você quer na instalação

Desses você pode optar por instalar ou não o editor sciTE pois iremos utilizar o VScode

<p align="center">
    <img src="https://github.com/Maelton-SI/lua/blob/main/Images/instalacao_dos_pacotes.png">
</p>

Com exceção do editor que ele sugere, fica a seu critério, deixe marcado todas as outras opções

Prossiga com o "Next"

### 6° passo

Seleção da pasta

Não precisa mexer nessa pasta, prossiga com "Next"

<p align="center">
    <img src="https://github.com/Maelton-SI/lua/blob/main/Images/selecao_da_pasta.png">
</p>

### 7° passo

Você pode criar um atalho para o terminal lua na área de trabalho basta deixar a opção
"Create a desktop shortcut" marcada

<p align="center">
    <img src="https://github.com/Maelton-SI/lua/blob/main/Images/criacao_de_atalho.png">
</p>

Obs: Você também pode adicionar o tema dark no editor sciTE caso tenha optado por ele, 
para isso basta deixa a opção "addicional schemes" marcada

Por fim clique em "Next"

### 8° passo

Verifique as opções que serão instaladas e estando tudo ok clique em "install"

<p align="center">
    <img src="https://github.com/Maelton-SI/lua/blob/main/Images/instalacao.png">
</p>

### 9° passo

Após a instalação de todos os pacotes um tela de finalização parecerá, apenas clique em 
"Finish"

### 10° passo: VScode

Para utilizar Lua no terminal do Visual studio basta instalar a extensão "Lua"
e ao criar um novo arquivo salve-o com a extensão .lua

<p align="center">
    <img src="https://github.com/Maelton-SI/lua/blob/main/Images/extensaoLua_VScode.png">
</p>

## Linux

Abra o terminal e utilizando o gerenciador apt do linux, primeiro 
baixamos os arquivos através do comando
	
    - sudo apt install lua5.1

Em seguida instale a seguinte ferramenta através do comando:

    - sudo apt install build-essential libreadline-dev

E por fim para compilar e instalar a versão execute o seguinte script:

    mkdir lua_build
 
    cd lua_build
 
    curl -R -O http://www.lua.org/ftp/lua-5.1.5.tar.gz
 
    tar -zxf lua-5.1.5.tar.gz
 
    cd lua-5.1.5
 
    make linux test
 
    sudo make install

# Sintaxe

## Entrada de dados

Para receber dados utilizamos a função "io.read()", como no exemplo a 
seguir:

    print("Digite seu nome: ")  -> Printa na tela o que o usuário deve digitar
    nome = io.read()            -> Recebe o input na variável nome
    print("Seu nome é ".. nome) -> Print o mensagem + nome

obs: O tipo de dado retornado pelo io.read() é uma string.

## Saída de dados

Para imprimir na tela utilizamos o comando print()

    print("Hello World")

## Declaração de Variáveis

Como é característica da linguagem não precisamos explicitar qual o tipo da variável,
pois de forma dinâmica a própria linguagem faz essa tipagem

Assim declaramos uma variável da seguinte forma:

    <nome da variavel> = <valor>

Podemos ter os seguintes tipos para valores em Lua:

    Tipos de valores:
        Nil: Equivale ao NULL
        Boolean: False/True
        Number: Representa um número como ponto flutuante
        String: Cadeia de caracter
    Tipos Objetos:
        Function: Possibilita guarda uma chamada de função na variável;
        Userdata: Representa um bloco de código em C
        Thread: Co-rotinas
        Table: Representa Arrays e objetos

obs: Para Lua quem carrega o tipo é o próprio valor e não a variável

## Regras de Visibilidade

Dentro da linguagem existe a palavra reservada Local, na qual você pode definir 
variáveis locais que valem no bloco que ela foi declarada e nos próximos que sejam
mais internos. Observe o seguinte exemplo:

    x = 10                 -- variável global
     do                    -- bloco novo
       local x = x         -- novo 'x', com valor 10
       print(x)            --> 10
       x = x+1
       do                  -- outro bloco
         local x = x+1     -- outro 'x'
         print(x)          --> 12
       end
       print(x)            --> 11
     end
     print(x)              --> 10  (o x global)

Perceba que dependendo do bloco o x assume um valor diferente, e ao sair de cada
um dos blocos as declarações Local mais internas vão perdendo seus valores assumindo
assim um número mais externo 

## Estrutura condicional (IF)

A estrutura básica para o if é a seguinte:

    if "expressao" then
        bloco de código
    elseif "expressao" then
        bloco de código
    else
        bloco de código
    end

O comportamento do if funcionada da seguinte maneira: caso o valor da expressão seja
verdadeiro ele permite a entrada no bloco, caso não vai até a próxima estrutura, ignorando
o bloco daquela expressão

### Operadores

Você pode utilizar os seguinte operadores nas expressões da Linguagem Lua:

#### Operadores Relacionais

    Menor que: "<"
    Maior que: ">"
    Maior ou igual: "=>"
    Menor ou igual: "=<"
    Igualdade: "=="
    Diferente: "~="

#### Operadores Lógicos

    AND: equivale ao "&&" em C;
    OR: equivale ao "||" em C;
    NOT: Inverte o valor.

#### Operadores Aritméticos

    Adição: "+"
    Subtração: "-"
    Multiplicação: "*"
    Divisão: "/"
    Resto da divisão: "%"
    Exponenciação: "^"

## Estruturas de Repetição (WHILE, FOR E REPEAT)

### While

Sintaxe básica:

    while "expressao" do
        bloco de código
    end

Obs: Sempre adicione um contador para não gerar um LOOP INFINITO

O comportamento do while é que enquanto a expressão for atendida, ou seja, 
enquanto for verdadeira o bloco de código vai ser repetido

### For

FOR (numérico):

    for "expressão", "valor1", "valor2" do
        bloco de código
    end

Esse tipo de FOR funciona da seguinte forma: A expressão inicializa um contador,
o próximo valor (valor1) diz qual o será o valor da última iteração e por fim o 
valor2 é o incrementador ou decrementador. O laço só acaba após o contador ultrapassar
o valor1.

FOR (Genérico):

    for "valores" in "função" do
        bloco de código
    end

O for genérico retorna um valor da função iteradora e coloca-o dentro das variáveis
que estarão em valores. Uma das utiliades desse for é percorrer um Array, utilizando 
a função pairs(nomeDoArray)

### Repeat

Sintaxe básica:

    repeat 
        Bloco de código
    until "expressão"

Obs: Sempre adicione um contador para não gerar um LOOP INFINITO

No repeat bloco será executado pelo menos uma vez para depois no linha de comando 
"until" fazer uma validação. O laço só será interrompido quando a expressão for
verdadeira, até atingi-la

## Funções

Sintaxe básica:

    function nomeDaFuncao (args)
        Bloco de código
    end

Obs: Pode ou não retornar alguma coisa, para retornar algo basta utilizar a palavra
reservada "return" + valor






