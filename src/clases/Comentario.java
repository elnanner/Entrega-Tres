package clases;

public class Comentario {

	protected String texto;
    protected String autor; //despues va a ser un id del auto o algo asi
    
    public Comentario(String textoParam, String autorParam){
    	texto=textoParam;
    	autor=autorParam;
    }

	public String getTexto() {
		return texto;
	}

	public void setTexto(String texto) {
		this.texto = texto;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}
	
}
