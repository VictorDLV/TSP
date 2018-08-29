struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        // PENDIENTE: Escribir una respuesta
        if question.lowercased() == "¿como te llamas?"{
          return "My name is QuestionBoot"
        }
        else if question.lowercased() == "¿pasare temas selectos de programacion?"{
          return "Of course, you will have a 10"
        }
        else if question.lowercased() == "¿que es verde y huele a limon?"{
          return "The lemon my friend"
        }
        else if question.lowercased() == "¿en donde estamos?"{
          return "We are in the FI UNAM ;)"
        }
        else if question.lowercased() == "¿me graduare?"{
          return "mmmmmm ... Nop :´("
        }
        return "?"
    }
"""
print(responseTo(question: "¿ComO te llamas?"))
print(responseTo(question: "¿pasare temas selectos de programacion?"))
print(responseTo(question: "¿que es Verde y Huele a liMon?"))
print(responseTo(question: "¿en donde estam0s?"))
print(responseTo(question: "¿me graduarE?"))
"""

}
