package javastudy04;

public class HelloJava01_PCRoom {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Drmundo d = new Drmundo();
		d.Q();
		d.W();
		d.E();
		d.R();
		Cogmo c = new Cogmo();
		c.Q();
		c.W();
		c.E();
		c.R();
		c.passive();
		
		Lol chogas = new Lol() {
			
			@Override
			public void W() {
				// TODO Auto-generated method stub
				System.out.println("흉포한 울부짖음");
			}
			
			@Override
			public void R() {
				// TODO Auto-generated method stub
				System.out.println("포식");
			}
			
			@Override
			public void Q() {
				// TODO Auto-generated method stub
				System.out.println("파열");
			}
			
			@Override
			public void E() {
				// TODO Auto-generated method stub
				System.out.println("날카로운 가시");
			}
		};
		//Lol l = new Lol();
		chogas.Q();
		chogas.W();
		chogas.E();
		chogas.R();
		
		new Lol() {
			public void dance() {
				System.out.println("롤 캐릭터가 춤을 춥니다~");
			}
			
			@Override
			public void W() {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void R() {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void Q() {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void E() {
				// TODO Auto-generated method stub
				
			}
		}.dance(); //Lol 상속받은 익명 클래스에만 있는 dance를 호출하려면
		//이렇게 인스턴스 만들자마자 호출하는 거 외엔 방법이 없음
		//아니면 Lol에도 dance 메소드를 만들어둬야 한다.
		
	}

}






