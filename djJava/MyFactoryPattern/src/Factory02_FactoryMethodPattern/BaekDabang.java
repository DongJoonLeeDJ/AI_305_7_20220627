package Factory02_FactoryMethodPattern;

public class BaekDabang extends FoodStore{
    @Override
    public Food createFood() {
        return new CoffeeFood();
    }
}
