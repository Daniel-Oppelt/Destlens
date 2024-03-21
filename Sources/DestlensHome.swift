//
//  DestlensHome.swift
//
//
//  Created by User on 14/03/24.
//

import Foundation
class DestlensHome {
    func calculateHome(_ houseNum: Int) {
        var numeroCasa = houseNum //coloca o valor de "houseNum", que é constante, em uma variável
        var textHouse = String(numeroCasa) //coloca o valor de "numeroCasa" e transforma em texto
        while textHouse.count != 1 { //conta o número de caracteres e, enquanto for diferete de 1, coloca no loop.
            numeroCasa = calculate(numeroCasa) // numeroCasa vai receber o valor da função Calculate
            textHouse = String(numeroCasa) //textHouse vai receber o valor de numeroCasa e transformar em string
        }
        houseVision(numeroCasa) //chama a função "houseVision" e coloca o valor de "numeroCasa"
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
    func calculate(_ houseNum: Int) -> Int { //recebe o valor de houseNem e devolver um número inteiro
        var soma = 0 //variável inicial soma com número zero
        var numero = houseNum //variável numero recebe o valor de houseNum (que estava invariável)
        while numero > 0 { //enquanto numero for maior que 0 continua
            soma += numero % 10
            /// Atribui a 'soma' o valor de 'soma + resto de (numero / 10)'
            numero = Int(numero/10)
            /// Atribui a 'numero' o valor de 'numero / 10' como Int,
            /// excluindo a parte fracionaria
        }
        return soma
    }

    func houseVision(_ num: Int) {
        DestlensPrint().globePrint()
        switch num {
    case 1:
        print("""
Vantagens: é uma casa com energia de liderança e inovação. Os moradores deste local tendem a não ouvir conselhos ou o que as pessoas comentam a seu respeito.\n\nCostumam ser ousados e aprendem com os próprios passos, já que gostam de arriscar. Boas vibrações para pessoas originais, independentes, dinâmicas, elétricas e com uma série de projetos e ideias.\n\nDesvantagens: a casa 1 acaba gerando um grande individualismo e, por isso, os moradores devem tomar cuidado com a agressividade (que pode se manifestar intencionalmente), o egoísmo e a insegurança.\n\nDica de Feng Shui: decore e/ou organize os objetos aos pares.
""")
    case 2:
        print("""
Vantagens: é a casa do casamento, da parceria e da sociedade, já que os moradores gostam de fazer as coisas em conjunto. A intuição e a sensibilidade são bem fortes e estas pessoas tendem a ser diplomáticas, conciliadoras, criativas e detalhistas.\n\nSendo assim, costumam ajustar as divergências para conquistar harmonia e união. Boas vibrações para casais, amantes, namorados, músicos, artistas, místicos e para quem gosta de plantas e natureza.\n\nDesvantagens: a hipersensibilidade pode fazer com que os moradores dessa casa se preocupem demais com os outros de uma maneira muito maternal e, assim, acabem doando mais do que devem. Sensações como submissão e passividade também podem ocorrer nessa casa.\n\nDica de Feng Shui: tenha velas ou objetos triangulares na decoração.
""")
    case 3:
        print("""
Vantagens: esta casa vibra com a energia da expansão, da comunicação, do entusiasmo e da expressividade. Os moradores terão novos caminhos e oportunidades em suas vidas. Boa casa para jornalistas, publicitários e vendedores. Também é favorável para ampliar o divertimento, a sociabilidade e as festas.\n\nDesvantagens: os moradores podem ter humor oscilante e desgaste de energia, por conta de diferentes atividades e da sociabilidade. Ainda pode haver tendência para preguiça ou influência de opiniões externas.\n\nDica de Feng Shui: tenha plantas, objetos de forma quadrada (como abajur, quadros ou vasos) ou a cor amarela na decoração.
""")
    case 4:
        print("""
Vantagens: estabilidade, estrutura, segurança e proteção são as principais energias de uma casa com a vibração deste número. Há uma relação direta com a energia da segurança das quatro paredes.\n\nHá também muita praticidade, planejamento, determinação e realização. Esta casa é indicada para pessoas que trabalham com responsabilidade para um bem comum, ajudando os outros e o planeta. Também é útil para quem é muito ligado à natureza, pois tem relação com os quatro elementos: água, ar, fogo e terra.\n\nDesvantagens: Os ocupantes desta casa podem priorizar demais o trabalho e tendem a ser teimosos e lentos.\n\nDica de Feng Shui: tenha na decoração objetos divertidos, instrumentos musicais e lembranças de viagens. Além, é claro, de muita música no ambiente.
""")
    case 5:
        print("""
Vantagens: essa é a casa das viagens, das festas, da alegria, da mudança, da liberdade e da comunicação. A movimentação é constante na casa com a vibração do número 5 e o espírito de aventura e de independência impera na vida de seus ocupantes.\n
Há muita energia de vitalidade, versatilidade e expansão. Boa casa para quem trabalha com viagens, comunicação, eventos, vendas e relações públicas.\n
Desvantagens: o excesso de agitação pode tornar os moradores dispersos, rebeldes e até mesmo impulsivos.\n
Dica de Feng Shui: inclua a cor verde e/ou lilás na decoração, objetos de madeira e/ou esculturas ou imagens que representem grupos de pessoas unidas.
""")
    case 6:
        print("""
Vantagens: essa casa é aconchegante, acolhedora, saudável, bela, equilibrada e repleta de vibrações positivas para a vida em família e/ou em grupo. Há muita energia de generosidade, amor e proteção no lar com vibração do número 6.\n
Bom ambiente para famílias e crianças, além de também ser indicado para artistas, advogados e quem exerce atividades que envolvem voluntariado, comunidade e responsabilidade social.\n
Desvantagens: a grande energia de doação pode levar a um idealismo extremo ou à desilusão com os embates da vida. Pode haver muito perfeccionismo e recolhimento – vontade de não querer sair de casa.\n
Dicas de Feng Shui: tenha um canto de leitura ou hobby. Fontes, objetos de metal e/ou redondos ajudam a energia circular.
""")
    case 7:
        print("""
Vantagens: essa casa tem vibração muito intuitiva e parece um refúgio sagrado. Estimula os estudos, o autoconhecimento e o caminho espiritual.\n\nO número 7 favorece a introspecção, a meditação e os insights profundos. Bom ambiente para quem precisa ficar sozinho por um tempo. Indicada para estudantes, filósofos, religiosos e pesquisadores.\n\nDesvantagens: as pessoas podem se tornar tímidas, desconfiadas e solitárias. E há uma tendência ao desequilíbrio entre o mundo material e o espiritual.\n\nDica de Feng Shui: flores e/ou itens na cor vermelha inspiram atitude e extroversão. Incluir na decoração: moedas chinesas, objetos em duplas ou com formato octogonal.
""")

    case 8:
        print("""
Vantagens: o número 8 simboliza dinheiro! Essa associação é válida, pois existe a vibração da prosperidade e do desenvolvimento material. Organização, liderança, empreendedorismo, poder, autoridade e sucesso são energias que habitam essa casa.\n\nBom lugar para morar e trabalhar. Indicada para trabalhadores autônomos, lojistas e para quem trabalha com finanças. Também é indicado para pessoas que exercem cargos importantes e de liderança.\n\nDesvantagens: as pessoas que vivem numa casa 8 podem se tornar muito ambiciosas e controladoras. Por outro lado, pode existir uma tendência à passividade, autossabotagem e medo ao lidar com o próprio dinheiro.\n\nDica de Feng Shui: inclua objetos de cerâmica ou barro na decoração. A cor amarela no centro dos ambientes ajuda a manter o equilíbrio espiritual e material.
""")
    case 9:
        print("""
Vantagens: nesta casa existe muita sabedoria, compaixão, generosidade, percepção e inspiração. Há também a sensação de missão cumprida, no sentido de que os esforços valeram à pena.\n\nA energia desse ambiente mostra resultado, finalização e conclusão. Bom ambiente para pessoas íntegras e que trabalham com energia de doação, para servir ao outro, como médicos, enfermeiros, terapeutas, mestres e professores.\n\nIndicada para quem deseja descobrir sua verdadeira missão e para quem faz artesanato e/ou trabalhos manuais.\n\nDesvantagens: as pessoas podem deixar de lado a sua individualidade em prol dos interesses coletivos. E, ao mesmo tempo, podem desenvolver sentimentos ambíguos, como o de vítima x salvador, e de culpa.\n\nDica de Feng Shui: expor na decoração objetos únicos e de gosto pessoal. Painel de fotos da família, filhos, companheiro(a), amigos queridos e viagens preferidas.
""")
    default:
        print("Erro ao calcular sua previsão")
        }
        DestlensPrint().end() //chamada de fim

    }

}
