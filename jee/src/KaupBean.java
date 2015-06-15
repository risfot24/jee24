
import java.util.Scanner; 
 
 
public class KaupBean {
	
	private double height;
	private double weight;
	//private int idx;
	//여기는 dba의 영역이다. //그래서 건들지마라.
	
	

	public KaupBean(double height, double weight) {
		this.height = height;
		this.weight = weight;
		
	}
	

	public double getHeight() {
		return height;
	}
	/*
	  public double getHeight() {
		return height;
	}
	
     */
	public double getWeight() {
		return weight;
	}
	
	
	

}