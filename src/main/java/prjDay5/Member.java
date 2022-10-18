package prjDay5;

public class Member {
	
	String id;
	String name;
	
	
	public Member() {
		// TODO Auto-generated constructor stub
		
		id="test";
		name="test";
	}
	
	public Member(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	
	public void method() {
		System.out.println( "methodA");
	}
 

	@Override
	public String toString() {
		return "Member [id=" + id + ", name=" + name + "]";
	}
	
	
	
}







