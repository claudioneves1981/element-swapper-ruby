class ElementSwap
  def switch(letters, instructions)

    inst = instructions.split(" ")
    linha = 0
    posicao1 = 0
    posicao2 = 0
    coluna = 0 
    letralinha1 = ""
    letralinha2 = ""
    letracoluna1 = ""
    letracoluna2= ""

    for i in 0...inst.length do 
      if inst[i].length == 6 
        linha = inst[i].byteslice(0).to_i
        posicao1 = inst[i].byteslice(2).to_i
        posicao2 = inst[i].byteslice(5).to_i
        letralinha1 = letters[linha][posicao1]
        letralinha2 = letters[linha][posicao2]
        letters[linha][posicao1] = letralinha2
        letters[linha][posicao2] = letralinha1
      elsif
        coluna = inst[i].byteslice(3).to_i
        letracoluna1 = letters[0][coluna]
        letracoluna2 = letters[1][coluna]
        letters[0][coluna] = letracoluna2
        letters[1][coluna] = letracoluna1
      end
    end
    letters
  end
end

