package projetopp

class Disciplina {

	String codigo
	String nome
	String dia
	String horario
	
	static hasMany = [alunos: Aluno, cursos: Curso]

	static belongsTo = [professor: Professor]

    	static constraints = {
		alunos nullable: true

		cursos nullable: true
    	}
}
