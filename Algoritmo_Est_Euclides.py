print("\nSeja Bem-Vindo ao Algoritmo de Euclides Estendido,")
print("Onde o MDC (Máximo divisor comum) de dois números inteiros 'a' e 'b' (exceto ambos zero) é calculado.")
print("Neste programa, além de fornecermos o MDC entre os números também daremos os coeficientes da combinação linear.")
print("Tais coeficientes são usados na fórmula (MDC(a,b) = a.x + b.y) e para verificar qual a inversa caso o MDC seja 1! \n")

#Função que calcula o MDC e os coeficientes X e Y:

def euclides_estendido(a, b):
    x0, x1 = 1, 0
    y0, y1 = 0, 1
    
    while b != 0:
        quociente = a // b
        a, b = b, a % b
        x0, x1 = x1, x0 - quociente * x1
        y0, y1 = y1, y0 - quociente * y1
        
    return a, x0, y0
  
#Função que solicita ao usuário dois numéros inteiros (exceto ambos 0) e "chama" a função anterior:

def main():
    while True:
        try:
            a = int(input('Digite o primeiro número inteiro em algarismos: '))
            b = int(input('Digite o segundo número inteiro em algarismos: '))

          #Restringe que o usuário digite a=0 e b=0:
          
            if (a == 0) & (b == 0):
                print("Insira números inteiros válidos (diferentes de zero).")
                continue
              
          #Garante que o programa rode para números negativos:
          
            mdc, x, y = euclides_estendido(abs(a), abs(b))

            if a < 0:
                x *= -1
            if b < 0:
                y *= -1
          
            print(f'\nMDC({a}, {b}) = {mdc}')
            print(f'Coeficientes x e y: x = {x} e y = {y}')
            print(f'Representação da combinação linear: ({a})*({x}) + ({b})*({y}) = {mdc}\n')

          #Caso o MDC seja igual a 1 (a e b são primos entre si), então exibe o número inverso modular:
          
            if mdc==1:
                if ((a == 1) & (b == 0)):
                    print(f'({b})*({y}) congruente 1 mod({a}) , ou seja, ({y}) é a inversa de ({b}) mod({a})')

                elif ((a == 0) & (b == 1)):
                     print(f'({a})*({x}) congruente 1 mod({b}) , ou seja, ({x}) é a inversa de ({a}) mod({b})')

                else:
                    print(f'({a})*({x}) congruente 1 mod({b}) , ou seja, ({x}) é a inversa de ({a}) mod({b})')
                    print(f'({b})*({y}) congruente 1 mod({a}), ou seja, ({y}) é a inversa de ({b}) mod({a})\n')

      #Caso em que o usuário digite algum valor que não seja válido, é exibido esta mensagem:
      
        except ValueError:
            print('Insira números inteiros válidos.')

if __name__ == '__main__':
  main()
