package javastudy02;

//Cryptid�� ��ӹ���
//ȯ����(=����� ����)�̶�� ������ Ŭ������ ��ӹ���
public class Dragon extends Cryptid implements Fliable, Runsable{

	//��
	private String species;
	
	public String getSpecies() {
		return species;
	}

	public void setSpecies(String species) {
		this.species = species;
	}

	@Override
	public void Run() {
		System.out.println("�巡���� ���� �ʴ´�...");
		
	}

	@Override
	public void jog() {
		System.out.println("������...");
		
	}

	@Override
	public void Fly() {
		System.out.println("�� �� �� ���ƺ���?");
		
	}

	@Override
	public void FlapWing() {
		System.out.println("�����ؼ� ���� ����.");
	}

	@Override
	public void sleep() {
		System.out.println("�ڴ� �� ����� ȥ����.");
		
	}
	
	public void polymorph() {
		System.out.println(species+"�巡���� ����~");
	}


}






