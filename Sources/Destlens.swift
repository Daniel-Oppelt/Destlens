// The Swift Programming Language
// https://docs.swift.org/swift-book
//
// Swift Argument Parser
// https://swiftpackageindex.com/apple/swift-argument-parser/documentation

import ArgumentParser

@main
struct Destlens: ParsableCommand {

    static var configuration = CommandConfiguration(
        abstract: "Consulta com um oráculo através da Numerologia",
        discussion: """
        A Numerologia é um ramo do esoterismo que utiliza o simbolismo dos números e operações matemáticas para antecipar as características da personalidade e até mesmo o destino de uma pessoa. Esta ferramenta permite uma interpretação numerológica de dados para previsões, aconselhamento e compreensão pessoal. Ao inserir os dados solicitados pelo oráculo (como "data de nascimento" ou "número da casa"), "Destlens" realizará os cálculos necessários para prever ou aconselhar de acordo com a opção selecionada.
        """,
        subcommands: [Home.self, Year.self, Birth.self]
    )
}

struct Home: ParsableCommand {
    static var configuration = CommandConfiguration(

        abstract: "Consulte a numerologia de sua casa e veja dicas para melhorar o ambiente."
    )
    @Argument(help: "Número de sua casa, não considere o número do prédio, do bloco, da vila, do condomínio, etc.")
    var houseNumber: Int
    func run() {
        DestlensHome().calculateHome(houseNumber)
    }
}
struct Year: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "Descubra seu ano pessoal e suas previsões."
    )

    @Argument(help: "Dia e mês de nascimento seguido do ano de previsão desejado. Ex:. 12-02-2024.")
    var dayMonthYear: String
    func run() {
        DestlensYear().calculateYear(dayMonthYear)
    }

}
struct Birth: ParsableCommand {

    static var configuration = CommandConfiguration(
        abstract: "Veja o que seu dia de nascimento tem a dizer sobre você."
    )

    @Argument(help: "Seu dia de Nascimento")
    var day: Int

    func run() {
        DestlensDay().calculation(day)
    }
}
