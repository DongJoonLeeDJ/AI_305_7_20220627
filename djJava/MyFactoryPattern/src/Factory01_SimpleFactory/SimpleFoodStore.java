package Factory01_SimpleFactory;

public class SimpleFoodStore {
    public Food orderFood(String type){
        Food f = createFood(type);
        f.prepared();
        return f;
    }
    private Food createFood(String type) {
        switch (type)
        {
            case "기사식당":
                return new GisaFood();
            case "동네분식집":
                return new BunsikFood();
            default:
                return null;
        }
    }
}
