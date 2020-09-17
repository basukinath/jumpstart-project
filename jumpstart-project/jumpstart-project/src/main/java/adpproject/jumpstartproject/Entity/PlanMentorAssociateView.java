package adpproject.jumpstartproject.Entity;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;


/**
 * The persistent class for the plan_mentor_associate_view database table.
 * 
 */
@Entity
@Table(name="plan_mentor_associate_view")
@Data
public class PlanMentorAssociateView implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(name="AREA_OF_INTEREST")
	private String areaOfInterest;

	private String assesment;

	@Temporal(TemporalType.DATE)
	@Column(name="ASSIGN_DATE")
	private Date assignDate;

	@Column(name="ASSOCIATE_NAME")
	private String associateName;

	private String email;

	@Column(name="EMAIL_ADDRESS")
	private String emailAddress;

	private String experties;

	@Column(name="MENTOR_ID")
	private int mentorId;

	@Column(name="MENTOR_NAME")
	private String mentorName;

	private String organization;

	@Column(name="PERCENT_COMPLETE")
	private BigDecimal percentComplete;

	@Lob
	private byte[] photo;
}