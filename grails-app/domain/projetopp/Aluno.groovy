package projetopp

class Aluno extends Pessoa {

	String matricula
	Date ingresso
	String periodo
	String formaDeIngresso
	String portadorDeNecessidades

	static belongsTo = Disciplina

	static hasMany = [disiplinas: Disciplina, notas: Nota]	

    	static constraints = {
    	}
}
