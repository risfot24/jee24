public class KaupServiceImp1 implements KaupService{
 //이렇게 안하고 extends 추가 하여서 또 할수가 있다..//그런데 extends하게되면 은닉성이 보장이 안된다..
	                                    //그래서 하지마라
	private int idx;
	
	public KaupServiceImp1(double height, double weight) {
		KaupBean kapvo = new KaupBean(height,weight);
		getKaupIndex(kapvo.getHeight(), kapvo.getWeight());
		
		
	}
	@Override
	public int getKaupIndex(double height, double weight) {
		//KaupVO1 kapvo = new KaupVO1(height , weight); //이렇게도 해보자 //나중에
		//height = kapvo.getHeight();
		//weight = kapvo.getWeight();
		int result = (int)(( weight / (height * height) ) * 10000); 
		this.idx =result ;
		
		//getResultMsg(); //이렇게 해도 되나??
		//return result; //this.idx = (int)(( weight / (height * height) ) * 10000);
		return this.idx;
		
		//처세술
		//pl한테 이거 void 아니에요 하다가 찍힐수 있다.. 그냥 해라...//어차피 프로그램 전체구동하는데 이상이 없지 않나?
	}
	
	
	

	@Override
	public String getResultMsg() {
      String msg= "";
		
		if (this.idx > 30) {msg = "비만";} 
		else if (this.idx > 24) {msg = "과체중";} 
		else if (this.idx > 20) {msg = "저체중";} 
		else if (this.idx > 15) {msg = "마름";} 
		else if (this.idx > 13) {msg = "영양실조";} 
		else {msg = "소모증 ";}
	
		return "카우프 지수는 "+this.idx+" ,이고  " +msg+" 입니다.";
	}

	
	

}