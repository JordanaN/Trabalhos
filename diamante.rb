puts "Digite uma letra de entrada: "
@answer = gets.chomp


@esp = 0
@esp2 = 0
@x = ""

#pegando os espaços
for @letras in "a"..@answer
	@esp +=1
end

("b"..@answer).each do |j|
	if j != @answer
		@x << j + " " 
	end
end

@x.reverse! #inverte
@x = @x.split(" ") #quebra a variavel e coloca em um array


#printando letra A 1
def primeira_letra
	print (" " * @esp)+ "a" + "\n"
end

#printando o resto das letras
def resto_letras
	for @letras in "b"..@answer
		@esp = @esp -1
		@esp2 = @esp2 + 2
		print (" " * @esp) + @letras.to_s
		print (" " * @esp2) + @letras.to_s + "\n"
	end

end

#fazendo metodo reverso
def reverso

	for @letras in @x
		@esp = @esp + 1
		@esp2 = @esp2 -2

		print (" " * @esp)+ @letras.to_s
		print (" " * @esp2)+ @letras.to_s + "\n"
	end	
end

#printando letra A 2
def primeira_letra2
	print (" " * @esp)+" "+ "a" + "\n"
end



primeira_letra
resto_letras
reverso
primeira_letra2
