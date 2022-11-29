package AbstractFactoryPattern;

public class megaPhoneFactory implements comprehensiveFactory{
    @Override
    public PhoneFactory requestPhone(String company) {
        switch (company) {
            case "apple":
                return new ApplePhoneFactory();
            case "android":
                return new AndroidPhoneFactory();
            case "window":
                return new WindowPhoneFactory();
            default:
                return null;
        }
       // throw new IllegalArgumentException();
    }
}
