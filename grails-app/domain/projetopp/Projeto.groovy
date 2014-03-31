package projetopp

class Projeto {

	String codigo
	String nome
	String descricao
	String atividade

	//static hasOne = [professor: Professor]

	static hasMany = [cursos: Curso]

    static constraints = {
	cursos nullable: true
    }
}
