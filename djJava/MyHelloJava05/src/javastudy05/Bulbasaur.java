package javastudy05;

public class Bulbasaur implements Animalable, Plantable {

	@Override
	public void Grow() {
		System.out.println("µî¿¡ »õ½ÏÀÌ ÀÚ¶ø´Ï´Ù.");
	}

	@Override
	public void Photosynthesis() {
		System.out.println("¼Ö¶óºö ÁØºñ");
	}

	@Override
	public void Move() {
		System.out.println("¾û±İ¾û±İ");
	}

	@Override
	public void Run() {
		System.out.println("ÆúÂ¦ÆúÂ¦");
	}

	@Override
	public void Charming() {
		System.out.println("¾¾¾¾¾¾ ÀÌ»óÇØ¾¾~");
	}

}
