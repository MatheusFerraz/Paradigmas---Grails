package projetopp

class Nota {

	double prova1
	double prova2
	double prova3
	int qtdFaltas

	static belongsTo = [aluno: Aluno]

    static constraints = {
    }
}
