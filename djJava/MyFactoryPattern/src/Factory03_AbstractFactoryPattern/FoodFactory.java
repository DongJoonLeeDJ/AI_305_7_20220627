package Factory03_AbstractFactoryPattern;

public abstract class FoodFactory {

    public Food orderFood(){
        Food f = createFood();
        f.prepared();
        return f;
    }

    public abstract Food createFood();
}
