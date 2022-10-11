package javastudy02;

//awt´Â ¾Æ´Ô
import java.util.ArrayList;
import java.util.List;

public class HelloJava01_Fantasy {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<Cryptid> fantasies = new ArrayList<Cryptid>();
		fantasies.add(new Dragon());
		fantasies.add(new Unicorn());
		fantasies.add(new Cryptid() {

		});
	}

}
