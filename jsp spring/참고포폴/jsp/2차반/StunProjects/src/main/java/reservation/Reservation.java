package reservation;

public class Reservation {
	
	public ReservationDTO getResverationInfo(String name, String tel, int number, String storeName, String reservationDate) {
		ReservationDTO reDto = new ReservationDTO(name, tel, number, storeName, reservationDate);
		return reDto;
	}
}
 