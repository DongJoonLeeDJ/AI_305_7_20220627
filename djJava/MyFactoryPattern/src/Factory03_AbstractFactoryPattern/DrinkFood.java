package Factory03_AbstractFactoryPattern;

public class DrinkFood extends  Food{
    @Override
    public void prepared() {
        System.out.println("음료수를 만듭니다. 공장에서...");
    }

    @Override
    public void tryEat() {
        System.out.println("편의점 등에서 먹을 수 있어요");
    }
}
