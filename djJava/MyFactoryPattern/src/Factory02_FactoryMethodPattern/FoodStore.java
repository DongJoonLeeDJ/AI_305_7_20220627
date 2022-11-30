package Factory02_FactoryMethodPattern;

public abstract class FoodStore {
    public Food orderFood(){
        Food f = createFood();
        f.prepared();
        return f;
    }

    public abstract Food createFood();
}
