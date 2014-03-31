package projetopp

class Professor extends Pessoa {

	String codigo
	String formacao
	String especializacao
	String dedicacao

	static hasMany = [disciplinas: Disciplina]

    	static constraints = {
    	}
}
