package Factory01_SimpleFactory;

public class SimpleFactoryMain {
    public static void main(String[] args) {
        //심플 팩토리 패턴
        //Main이 아닌 다른 클래스에서 인스턴스를 만들어 줌
        //그러나... 새로운 class 추가될 때마다 코드 바꿔야 됨
        SimpleFoodStore f = new SimpleFoodStore();
        Food f1 = f.orderFood("기사식당");
        f1.tryEat();
        Food f2 = f.orderFood("동네분식집");
        f2.tryEat();
    }
}
