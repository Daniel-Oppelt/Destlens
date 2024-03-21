//
//  DestlensDay.swift
//
//
//  Created by User on 13/03/24.
//

import Foundation
class DestlensDay { //declaração de classe
    func calculation(_ day: Int) { //função dentro da classe para o dia
        DestlensPrint().globePrint() //chamando a função DestlensGlobe
        switch day { //estrutura de condicional que recebe a variável dia e analisa o retorno
        case 1, 10, 19, 28:
            print("""
    Você foi provavelmente nasceu com o dom do dinamismo, da originalidade e da criatividade. É possível que tenha inquietação fora do comum para se expressar de jeito único e buscar cada vez mais sua independência.\nTambém pode exercer papel de liderança ou ser inovador em alguma área. Seu lado rebelde, individualista e competitivo tende a incitar essa pessoa a constantemente crescer, progredir e se destacar.
    """)
        case 2, 11, 20, 29:
            print("""
    Você provavelmente tem o talento de conciliar pontos de vista, conhecimentos, pessoas e ambientes aparentemente divergentes. Ou simplesmente ser um colo reconfortante, que com sua simples presença ampara e oferece segurança emocional aos outros.\nAlém disso, pode ter predisposição a estabelecer parcerias, acordos e alianças que influenciarão sua vida significativamente. Você nasceu para formar duplas e brilhar em conjunto com o outro.
    """)
        case 3, 12, 21, 30:
            print("""
    Você ganhou de presente da vida a força das palavras. Sua capacidade de se comunicar com versatilidade, encanto e criatividade é notória. E poderá influenciar bastante as pessoas ao se expressar por meio de diversas formas, seja falando, escrevendo, cantando ou pintando.\nOu seja, você deve sempre buscar se comunicar e entrar em contato com várias pessoas, pois poderá alcançar um nível impressionante de popularidade. Possivelmente sua voz será ouvida por muitos.
    """)
        case 4, 13, 22, 31:
            print("""
    Você nasceu com disposição considerável para ser um porto seguro na vida das pessoas. Seu talento para trabalhar, perseverar e assumir muitas responsabilidades é digno de nota. Tanto que tem produtividade suficiente para cuidar simultaneamente de deveres profissionais, familiares e domésticos bem exigentes.\nAs outras pessoas sabem que podem contar com você para o que der e vier. Com um jeito prestativo e dedicado, valoriza a segurança familiar, a credibilidade social e a estabilidade financeira.
    """)
        case 5, 14, 23:
            print("""
    Você recebeu de presente da vida curiosidade acima do normal, além de inconformismo com o tédio e as convenções sociais repressoras, já que gosta de viver experiências diversificadas, seja fazendo vários cursos, viajando bastante ou se interessando por diversas áreas.\nVocê possivelmente tem a aptidão de buscar sempre algo novo, diferente e estimulante. Seus olhos brilham por ter uma disposição jovial, uma mente ávida por conhecimentos e um desejo sincero de gerar mudanças na vida das pessoas.
    """)
        case 6, 15, 24:
            print("""
    Você tem o dom de ser fiel às suas amizades e de se dedicar à família, pois possivelmente sente necessidade de criar vínculos repletos de companheirismo, harmonia e união. E ainda tem o talento de servir e de ser útil, especialmente aos familiares e às pessoas que mais necessitam de ajuda.\nQuer contribuir de alguma maneira para a comunidade e o bem social. Também pode gostar de viver com beleza e arte a sua volta, além de provavelmente ter aptidão toda especial para se reunir com pessoas que têm os mesmos ideais que os seus. Ao fazer parte de um grupo, terá mais oportunidades de proporcionar melhores condições de vida às pessoas.
    """)
        case 7, 16, 25:
            print("""
    Você certamente foi presenteado com o dom da investigação, da pesquisa e da disposição em buscar constantemente conhecimentos especializados. Além disso, tende a se tornar uma autoridade na área que escolher se envolver.\nCom isso, terá condições de atuar como um expert ou mesmo um professor, ensinando de forma didática e com embasamento teórico o que descobre, percebe e coloca em prática no seu dia a dia. Também é uma pessoa muito seletiva, reflexiva e voltada para a qualidade de vida.
    """)
        case 8, 17, 26:
            print("""
    Você nasceu com o dom da perseverança e da praticidade, e pode ser capaz de concretizar metas pessoais e do grupo. Consegue esse feito ao colocar seu talento executivo para ordenar, administrar e reestruturar o que for necessário no processo de realização.\nAo mesmo tempo, tem forte poder de influenciar os outros, caso decida assumir responsabilidades filantrópicas. Nesse caso, poderá se colocar de forma ainda mais útil às pessoas ao assumir seu poder pessoal e desempenhar com justiça uma posição de liderança e autoridade.
    """)
        case 9, 18, 27:
            print("""
    Você recebeu de presente carisma considerável e desejo de se doar humanitariamente aos outros. Faz parte de sua missão fazer significativos sacrifícios pessoais em prol do bem de poucas ou muitas pessoas. Seu dom artístico, professoral ou sua presença sensível tendem a ajudar muita gente.\nPor meio desses potenciais, você pode conseguir diminuir o sofrimento dos outros ou inspirá-los de alguma forma a viver a vida com mais intensidade e entrega. E, também, graças ao seu exemplo de autossuperação, poderá ser bastante percebido pelos outros, exercendo naturalmente esse tipo de liderança compassiva.
    """)
        default: //se não tiver uma resposta válida
            print("Dia de nascimento inválido")
        }
        DestlensPrint().end() //chamada de fim
    }

}
