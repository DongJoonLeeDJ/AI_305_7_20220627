package AbstractFactoryPattern;

public class Window extends OS {
    @Override
    void installOS() {
        System.out.println("요즘 쿠팡에서 싸게 팔죠? 윈도우 OS");
    }
}
