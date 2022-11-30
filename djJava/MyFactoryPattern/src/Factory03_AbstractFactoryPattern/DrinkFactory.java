package Factory03_AbstractFactoryPattern;

public class DrinkFactory extends FoodFactory{
    @Override
    public Food createFood() {
        return new DrinkFood();
    }
}
