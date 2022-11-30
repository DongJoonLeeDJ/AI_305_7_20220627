package Factory02_FactoryMethodPattern;

public class CoffeeFood extends Food{
    @Override
    public void prepared() {
        System.out.println("원두를 갑니다.");
    }

    @Override
    public void tryEat() {
        System.out.println("원두향을 맡으며 호로록");
    }
}
