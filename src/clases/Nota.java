package clases;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class Nota {

	protected String texto;
	protected String autor;
	protected Date fecha;
	protected DateFormat format;
	protected ArrayList<Comentario> comentarios;
	
	//eran de contenido pizarra (las mantengo pero hay que ver nombres y demas
		 protected String nombre;
		 protected String descripcion;
		 protected String pathImage;
		 protected String path="#";
		 protected String vista;
		 protected String id;
	
	public Nota(String nombreParam, String descripcionParam,String textoParam, String autorParam,String idParam){
		texto=textoParam;
		autor=autorParam;
		fecha=new Date();
		format= new SimpleDateFormat("dd/MM/yyyy HH:mm:ss"); // yyyy/MM/dd
		comentarios=new ArrayList<Comentario>();
		
		//las de contenido pizarra
				nombre=nombreParam;
				descripcion=descripcionParam;
			    vista="notaSimple";
			    id=idParam;
			    pathImage="./images/papel.jpg";
	}

	public DateFormat getFormat() {
		return format;
	}

	public void setFormat(DateFormat format) {
		this.format = format;
	}

	public ArrayList<Comentario> getComentarios() {
		return comentarios;
	}

	public void setComentarios(ArrayList<Comentario> comentarios) {
		this.comentarios = comentarios;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getPathImage() {
		return pathImage;
	}

	public void setPathImage(String pathImage) {
		this.pathImage = pathImage;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getVista() {
		return vista;
	}

	public void setVista(String vista) {
		this.vista = vista;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void addComment(Comentario comment){
		comentarios.add(comment);
	}
	
	public ArrayList<Comentario> getComments(){
		return comentarios;
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

	public String getFecha() {
		return format.format(fecha);
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	
	

	
	
}
