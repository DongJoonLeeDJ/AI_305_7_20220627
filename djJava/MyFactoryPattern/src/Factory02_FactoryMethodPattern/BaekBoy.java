package Factory02_FactoryMethodPattern;

public class BaekBoy extends FoodStore{
    @Override
    public Food createFood() {
        return new TansanFood();
    }
}
