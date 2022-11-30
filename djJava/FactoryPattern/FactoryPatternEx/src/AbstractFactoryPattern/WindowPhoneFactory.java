package AbstractFactoryPattern;

public class WindowPhoneFactory implements PhoneFactory {
    @Override
    public Phone createPhone() {
        return new WindowPhone();
    }

    @Override
    public OS createOS() {
        return new Window();
    }
}
