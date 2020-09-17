package adpproject.jumpstartproject.Entity;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;


/**
 * The persistent class for the admins database table.
 * 
 */
@Entity
@Table(name="admins")
@Data
public class Admin implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ADMIN_ID")
	private int adminId;

	@Column(name="ASSOCIATE_ID")
	private int associateId;

	private String email;

	@Column(name="MENTOR_ID")
	private int mentorId;

	private String name;

	private String password;

}