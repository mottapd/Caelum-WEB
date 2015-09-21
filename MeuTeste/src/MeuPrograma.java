import java.util.Calendar;
import java.util.List;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class MeuPrograma {

	public static void main(String[] args) {

		Contato contato = new Contato();

		contato.setNome("Caelum");
		contato.setEmail("contato@caelum.com.br");
		contato.setEndereco("Rua Vergueiro");
		contato.setDataNascimento(Calendar.getInstance());

		ContatoDao dao = new ContatoDao();

		// INSERT----------------------------------------------------------------------
		dao.adiciona(contato);
		// SELECT
		List<Contato> contatos = dao.getLista();
		System.out.println("----------------INSERT----------------");
		for (Contato cnt : contatos) {
			System.out.println("Id: " + cnt.getId());
			System.out.println("Nome: " + cnt.getNome());
			System.out.println("Endereco: " + cnt.getEndereco());
			System.out.println("Email: " + cnt.getEmail());
			System.out.println("Data: " + cnt.getDataNascimento().getTime() + "\n");
		}

		// UPDATE----------------------------------------------------------------------
		contato.setId(2L);
		contato.setEmail("comercial@caelum.com.br");
		dao.altera(contato);
		// SELECT
		contatos = dao.getLista();
		System.out.println("----------------UPDATE----------------");
		for (Contato cnt : contatos) {
			System.out.println("Id: " + cnt.getId());
			System.out.println("Nome: " + cnt.getNome());
			System.out.println("Endereco: " + cnt.getEndereco());
			System.out.println("Email: " + cnt.getEmail());
			System.out.println("Data: " + cnt.getDataNascimento().getTime() + "\n");
		}

		// DELETE----------------------------------------------------------------------
		contato.setId(7L);
		dao.remover(contato);
		// SELECT
		contatos = dao.getLista();
		System.out.println("----------------DELETE----------------");
		for (Contato cnt : contatos) {
			System.out.println("Id: " + cnt.getId());
			System.out.println("Nome: " + cnt.getNome());
			System.out.println("Endereco: " + cnt.getEndereco());
			System.out.println("Email: " + cnt.getEmail());
			System.out.println("Data: " + cnt.getDataNascimento().getTime() + "\n");
		}
	}
}
