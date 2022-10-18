package prjDay5;

public class LgCalculator  implements Calculator {
	
	public LgCalculator() {
	System.out.println(" LgCalculator");
	}

	@Override
	public int add(int su1, int su2) {
		return su1+su2;
		
	}

	@Override
	public int sub(int su1, int su2) {
		return su1-su2;
		
	}

}
