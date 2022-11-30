package Factory03_AbstractFactoryPattern;

public class iceCreamFood extends Food {
    @Override
    public void prepared() {
        System.out.println("얼음 보송이");
    }

    @Override
    public void tryEat() {
        System.out.println("겨울에 먹어야 제 맛");
    }
}
