package prjDay5;
public class SmCalculator  implements Calculator {
	
	public SmCalculator() {
	System.out.println(" smCalculator");
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
