package Factory03_AbstractFactoryPattern;

public class SnakFactory extends FoodFactory{
    @Override
    public Food createFood() {
        return new SnakFood();
    }
}
