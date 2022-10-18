package prjDay5;

public class Test {

	public static void main(String[] args) {

		//계산기
		
//		Calculator c = new SmCalculator();
		Calculator c = new LgCalculator();
		
		int result = c.add(5, 3);
		System.out.print(result);
	}

}
