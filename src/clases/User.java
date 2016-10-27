package clases;

public class User {

	protected String name;
	protected String type;
	
	public User(String nameParam, String typeParam){
		name=nameParam;
		type=typeParam;
	}
	
	public String getName(){
		return name;
	}
	
	public String getType(){
		return type;
	}
}
