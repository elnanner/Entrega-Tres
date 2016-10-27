package clases;

import java.util.ArrayList;

public class Pizarra{

	protected ArrayList<Pizarra> pizarras;
	protected ArrayList<Nota> notas;
	protected String ubicacionActual;
	protected Boolean permiteComentar;
	
	//eran de contenido pizarra (las mantengo pero hay que ver nombres y demas
	 protected String nombre;
	 protected String descripcion;
	 protected String pathImage;
	 protected String path="#";
	 protected String vista;
	 protected String id;
	
	
	public Pizarra(String nombreParam, String descripcionParam,String ubicacionParam, String pathParam,Boolean comentarios,String idParam){
		notas=new ArrayList<Nota>();
		pizarras=new ArrayList<Pizarra>();
		ubicacionActual=ubicacionParam;
		path=pathParam;
		permiteComentar=comentarios;
		
		//las de contenido pizarra
		nombre=nombreParam;
		descripcion=descripcionParam;
	    pathImage="./images/cartelera.jpg";
	    vista="pizarraSimple";
	    id=idParam;
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
	
	public Boolean getPermiteComentar(){ //no tiene setter, solo se hace al crear instancia
		return permiteComentar;
	}
	
	public ArrayList<Pizarra> getPizarras() { //la idea es que si usamos otra cosa intera dejemos esta interface...
		return pizarras;
	}

	public void addPizarra(Pizarra pizarra) {
		pizarras.add(pizarra);
	}

	public ArrayList<Nota> getNotas() { //la idea es que si usamos otra cosa intera dejemos esta interface...
		return notas;
	}

	public void addNota(Nota nota) {
		notas.add(nota);
	}
	
	public String getUbicacionActual() {
		return ubicacionActual;
	}

	public void setUbicacionActual(String ubicacionActual) {
		this.ubicacionActual = ubicacionActual;
	}



	

	
	

	
}
