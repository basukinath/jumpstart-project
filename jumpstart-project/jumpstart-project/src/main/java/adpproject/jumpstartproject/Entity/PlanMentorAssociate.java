package adpproject.jumpstartproject.Entity;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;


/**
 * The persistent class for the plan_mentor_associate database table.
 * 
 */
@Entity
@Table(name="plan_mentor_associate")
@Data
public class PlanMentorAssociate implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="PLAN_MENTOR_ASSOCIATE_ID")
	private int planMentorAssociateId;

	@Column(name="MENTOR_ID")
	private int mentorId;

	@Column(name="PLAN_ASSOCIATE_ID")
	private int planAssociateId;

}