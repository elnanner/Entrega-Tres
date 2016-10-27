package clases;


import java.util.Hashtable;

public class FuturoFactory {
	
	protected Hashtable<String, Pizarra> pizarras;
	
	public FuturoFactory(){
		pizarras=new  Hashtable<String, Pizarra>();
		
		Pizarra pizarraMaterias=new Pizarra("Materias", "En esta cartelera encontrarás info sobre las materias","materias", "/Home/materias",true,"P2");
		pizarras.put("Materias",pizarraMaterias);
		
		Pizarra pizarraOfertas=new Pizarra("Ofertas laborales", "En esta cartelera encontrarás info sobre las ofertas laborales disponibles", "ofertas laborales","/Home/Ofertas laborales",true,"P3");
    	Nota nota=new Nota("Ofertas", "contratar alumnos", "Empresa grosa quiere contratar alumnos","Empresa grosa","N1");
    	nota.addComment(new Comentario("soy un comentario", "rama"));
		pizarraOfertas.addNota(nota);
    	pizarraOfertas.addNota(new Nota("Ofertas", "explotar alumnos", "Empresa quiere explotar alumnos","Empresa explotadora :O","N2"));
    	pizarras.put("Ofertas",pizarraOfertas);
    	
    	Pizarra pizarraEventos=new Pizarra("Eventos", "En esta cartelera encontrarás info sobre eventos relacionados con la facultad o que pueden resultar de interés", "eventos","/Home/Eventos",true,"P4");
    	pizarras.put("Eventos",pizarraEventos);
    		
    	Pizarra pizarraPerdidos=new Pizarra("Perdidos", "En esta cartelera encontrarás info sobre objetos perdidos en la facultad", "perdidos","/Home/Perdidos",false,"P5");
    	pizarras.put("Perdidos", pizarraPerdidos);
	
    	Pizarra pizarraOtros=new Pizarra("Otros", "En esta cartelera encontrarás toda la demás info que no encontrarás en las demás carteleras :)", "otros","/Home/Otros",true,"P6");
    	pizarras.put("Otros",pizarraOtros);
		
		Pizarra pizarraHome=new Pizarra("Home", "Bievenido a la cartelera principal!" ,"Home","/Home",true,"P1");
    	pizarraHome.addPizarra(pizarraMaterias);
    	pizarraHome.addPizarra(pizarraOfertas);
    	pizarraHome.addPizarra(pizarraEventos);
    	pizarraHome.addPizarra(pizarraPerdidos);
    	pizarraHome.addPizarra(pizarraOtros);
		pizarras.put("Home",pizarraHome);
		
		
	}
	

	public Pizarra getPizarra(String namePizarra){
		//en un futuro va a conectar con la BD
		Pizarra pizarra=null;
		switch (namePizarra) {
        case "Home":
        	return pizarras.get("Home");
        case "Materias":
        	return  pizarras.get("Materias");
        case "Ofertas":
        	return pizarras.get("Ofertas");	
        case "Eventos":
        	return pizarras.get("Eventos");	
        case "Perdidos":
        	return pizarras.get("Perdidos");	
        case "Otros":
        	return pizarras.get("Otros");	
        default:
            return pizarra;//retorno pizarra nula y eso va a generar un error
       }
  }
	
	
	
}
