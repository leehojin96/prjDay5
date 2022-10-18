package prjDay5;

public class ReflectTest {

	public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		// TODO Auto-generated method stub
		//같은 객체를 만드는건데 왜 방법이 다를까?
		//첫번째 방법은 무조건 멤버로 객체를 정적으로 만드는건데
		//두번째 방법은 동적으로 객체가 변경가능하다
		
		
		Member m = new Member();
		System.out.println(m);
		m.method();
		
		
		
		Class clazz1 = Class.forName("prjDay5.Member");	  ///클래스정보 
		 Member  m2 =(Member)clazz1.newInstance();   //기본생성자	 
		 
		 System.out.println( m2);
		 m2.method();

	}

}
