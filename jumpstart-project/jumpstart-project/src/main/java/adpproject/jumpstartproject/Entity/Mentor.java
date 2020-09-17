package adpproject.jumpstartproject.Entity;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;


/**
 * The persistent class for the mentor database table.
 * 
 */
@Entity
@Data
public class Mentor implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="MENTOR_ID")
	private int mentorId;

	@Column(name="AREA_OF_INTEREST")
	private String areaOfInterest;

	private String email;

	private String experties;

	@Column(name="MENTOR_NAME")
	private String mentorName;

	private String organization;

	private String password;

	@Lob
	private byte[] photo;

	private String role;

}