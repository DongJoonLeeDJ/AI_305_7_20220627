package Factory03_AbstractFactoryPattern;

public class megaFactory extends comprehensiveFactory{
    @Override
    public FoodFactory requestFood(String type) {
        switch (type)
        {
            case "과자":
                return new SnakFactory();
            case "음료수":
                return new DrinkFactory();
            case "아이스크림":
                return new iceCreamFactory();
            default:
                return null;
        }
    }
}
