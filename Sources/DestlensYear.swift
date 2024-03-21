//
//  DestlensYear.swift
//
//
//  Created by User on 15/03/24.
//

import Foundation
class DestlensYear { //nomeação da classe
    func calculateYear(_ num: String) { //função vai receber num como string
        let result = num.filter("0123456789".contains) // filtro para algarismos 0-9
        if result.count != 8 { //se a contagem de algarismos for dif. de 8
            print("Formato incorreto. Ex:. DD-MM-YYYY") // imprime a frase
            return //encerrar a função
        }
        let valor = Int(result) //valor vira opcional <int>.
        /// Transforma um tipo String, em (Optional<Int> / Int?)
        /// "3" -> Optional<3>

        guard let unwrapped = valor else { // Optional<3> -> 3 / pega o valor opcional e transforma em inteiro.
            print("Nao é um numero inteiro!")
        return}

        var numeroAno = unwrapped // transforma o valor de unwrapped na variável "numeroAno"
        var textHouse = num //atribui o valor de "num" à variável textHouse.
        while textHouse.count != 1 { // enquanto a contagem de "textHouse" for diferente de 1
            numeroAno = calculate(houseNum: numeroAno) //aplica o calculate e atribui a "numeroAno"
            textHouse = String(numeroAno)
        }
        DestlensPrint().globePrint()
        yearVision(numeroAno)
    }

//    func calculoLoop(house: String) -> Int {
//        var aux: Int = 0
//        var home: Int = 0
//        while aux < house.count {
//            let characterIndex = house.index(house.startIndex, offsetBy: aux)
//            /// Descobre a localizacao do caractere fornecido pelo 'aux'
//            let charactere = house[characterIndex]
//            ///  o caractere localizado no characterIndex
//            let valor = Int(String(charactere))
//            /// Transforma o 'caractere' em um tipo String, e logo em seguida em (Optional<Int> / Int?)
//            /// '3'-> "3" -> Optional<3>
//
//            guard let unwrapped = valor else { // Optional<3> -> 3
//                print("Nao é um numero inteiro!")
//                break
//            }
//            home += unwrapped
//            /// Soma 'home' com o valor do unwrapped
//            /// home = home + unwrapped
//            aux+=1
//        }
//        return home
//        ///retorna o valor de 'home'
//
//    }

    ///  func + 'nome da funcao(argumentos da funcao: tipo )' -> 'tipo do retorno' {}
    func calculate(houseNum: Int) -> Int {
        var soma = 0 
        var numero = houseNum
        while numero > 0 {
            soma += numero % 10
            /// Atribui a 'soma' o valor de 'soma + resto de (numero / 10)'
            numero = Int(numero/10)
            /// Atribui a 'numero' o valor de 'numero / 10' como Int,
            /// excluindo a parte fracionaria
        }
        return soma
    }

    func yearVision(_ num: Int) {
        switch num {
        case 1:
            print("""
Ano Pessoal 1: é o início de um novo ciclo. Este é um ano de ação, determinação e realização e direcionar sua energia para alcançar sonhos e metas de longo prazo.
""")
    case 2:
        print("""
Ano Pessoal 2: é tempo de explorar as relações interpessoais. Este é um período em que as questões de equilíbrio, diplomacia e relacionamentos serão destacadas.
""")
    case 3:
        print("""
Ano Pessoal 3: fase de oportunidade para brilhar, expressar habilidades criativas e comunicativas. Este é um ano em que você estará atraindo atenção.
""")
    case 4:
        print("""
Ano Pessoal 4: este ciclo traz intensificação de realização, planejamento e segurança. É um ano em que se pode alcançar um novo nível de estabilidade se você focar nisso.
""")
    case 5:
        print("""
Ano Pessoal 5: ano ótimo para aproveitar o poder de concretização para implementar as mudanças que você deseja ou para se adaptar às mudanças que estão ocorrendo.
""")
    case 6:
        print("""
Ano Pessoal 6: período ótimo para trabalhar em equipe e de fazer algo significativo para a sociedade, comunidade, família e par.
""")
    case 7:
        print("""
Ano Pessoal 7: fase de autoaperfeiçoamento e aprofundamento. Importante focar em como você pode se tornar uma autoridade em sua área de atuação.
""")
    case 8:
        print("""
Ano Pessoal 8: ano extremamente poderoso porque está associado a poder, dinheiro, sucesso e autoridade. É uma fase de grande potencial e desafios.
""")
    case 9:
        print("""
Ano Pessoal 9: tempo de fechar ciclos, mas também grande potencial para realizações e conquistas.
""")
    default:
        print("Erro")
        }
        DestlensPrint().end()
    }
}
