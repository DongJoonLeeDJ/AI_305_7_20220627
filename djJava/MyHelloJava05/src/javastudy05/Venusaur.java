package javastudy05;

public class Venusaur extends Ivysaur {

	//ÀÌ»óÇØ²ÉÀº ±âº»ÀÌµ¿ ÀÚÃ¼µµ ÆúÂ¦ÆúÂ¦....
	@Override
	public void Move() {
		// TODO Auto-generated method stub
		System.out.println("¾îµò°¡ Â¡±×·´´Ù.");
		super.Run();
	}
	
	@Override
	public void Grow() {
		// TODO Auto-generated method stub
		System.out.println("µîµû¸® ²É ÀÚ¶÷");
	}
	
	@Override
	public void Charming() {
		// TODO Auto-generated method stub
		System.out.println("²É²É²É~ ÀÌ»óÇØ²É~");
	}
}
