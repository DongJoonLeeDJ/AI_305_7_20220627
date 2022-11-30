package Factory02_FactoryMethodPattern;

public class TansanFood extends Food{
    @Override
    public void prepared() {
        System.out.println("탄산수제조중");
    }

    @Override
    public void tryEat() {
        System.out.println("크으으으으");
    }
}
