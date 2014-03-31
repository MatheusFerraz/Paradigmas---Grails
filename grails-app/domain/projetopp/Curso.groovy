package projetopp

class Curso {

	String nome
	String codigo
	String cargaHoraria

	static belongsTo = [Projeto, Disciplina]

	static hasMany = [disciplinas: Disciplina, projetos: Projeto]

        static constraints = {
        }
}
