package reservation.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ReservationDao {
	final String namespace = "reservation.model.Reservation";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
}
