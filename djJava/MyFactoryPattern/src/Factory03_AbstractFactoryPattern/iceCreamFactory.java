package Factory03_AbstractFactoryPattern;

public class iceCreamFactory extends FoodFactory {
    @Override
    public Food createFood() {
        return new iceCreamFood();
    }
}
