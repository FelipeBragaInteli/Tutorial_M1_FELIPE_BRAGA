#Exercício da semana 5

O código abaixo possui vários erros, utilize o mesmo dentro da sua tela interativa, a primeira tela criada no Godot. Corrija os erros e comente as partes que estão erradas.
```
extends Node2D
#variável 'teste' não era necessária
var nome
var numero #'ú' da erro de 'unknown character' e não precisava ser declarado como = 0
var lista = []

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #Faltava $ antes LineEdit
	#Faltava o dois depois do LineEdit para diferenciar do primeiro, também mudei a ordem que estava escrito para ficar mais legivel
	nome = ($LineEdit2.text)
	#adicionei um terceiro label que 'printa' os dados colocados pelo usuario
	$Label3.text = str(numero) + " " + (nome)

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	#tirei o loop iterativo desnecessário e deixei apenas a função de append para adicionar o número inserido pelo úsuario na lista
	lista.append(numero)
	$Label.text = str(lista)

func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final 
	#Mudei o 'while loop' para um 'for loop' que itera pela lista e verifica se a algum numero que ao ser dividido por 2 tem resto diferente de 0 significando que ele é impar
	#exclui a variável cont e tirei o 'i=0' porque não são necessários para o metódo que usei para verificar se o número é impar
	#Coloquei um Label apenas com o nome ao apertar o botão, e é modificado caso as condições do if são satisfeitas
	$Label2.text = nome
	for i in range(len(lista)):
		if(lista[i] % 2 != 0): #adicionei espaços entre os operadores para ficar mais legivel e troquei o sinal de '==' para '!=' porque o objetivo dessa função é achar números que divididos por 2 tem resto diferente de 0 
			$Label2.text += "baldo" #reformulei para o codigo ficar mais conciso

#Botão para limpar a tela
func _on_Button4_pressed():
	numero = 0
	nome = ""
	lista.clear()
	$LineEdit.text = ""
	$LineEdit2.text = ""
	$Label.text = ""
	$Label2.text = ""
	$Label3.text = ""
