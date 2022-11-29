package AbstractFactoryPattern;

public class IOS extends OS{
    @Override
    void installOS() {
        System.out.println("또 성능 낮추시는 거 아니죠 IOS?");
    }
}
