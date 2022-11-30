package SimpleFactory;

public class SimplePhoneFactory {
    public Phone orderPhone(String type) {
        Phone phone = createPhone(type);
        phone.complete();
        return phone;
    }
    private Phone createPhone(String type) {
         switch (type) {
             case "apple":
                 return new ApplePhone();
             case "android" :
                 return new AndroidPhone();
             default :
                 return null;
        }
    }
}

