package aula01.aula;

public class PessoaTeste {
	
	public static void main(String[] args) {
		Pessoa pessoa1 = new Pessoa("Maria", 20);
		Pessoa pessoa2 = new Pessoa("Maria", 20);
		
		System.out.print(pessoa1);
		System.out.println(pessoa1.equals(pessoa2));
		
		System.out.println(pessoa1.hashCode() + " | " + pessoa2.hashCode());
	}

}
