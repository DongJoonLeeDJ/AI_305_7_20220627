package AbstractFactoryPattern;

public abstract class Phone {
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public abstract  void call();

    public abstract  void complete();

    public abstract  void playGame();
    
}
