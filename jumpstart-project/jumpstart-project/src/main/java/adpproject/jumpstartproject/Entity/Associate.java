package adpproject.jumpstartproject.Entity;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;


/**
 * The persistent class for the associate database table.
 * 
 */
@Entity
@Data
public class Associate implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ASSOCIATE_ID")
	private int associateId;

	@Column(name="ASSOCIATE_NAME")
	private String associateName;

	@Column(name="EMAIL_ADDRESS")
	private String emailAddress;

	private String password;

}