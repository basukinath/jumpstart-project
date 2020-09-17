package adpproject.jumpstartproject.Entity;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;


/**
 * The persistent class for the plan_associate_view database table.
 * 
 */
@Entity
@Table(name="plan_associate_view")
@Data
public class PlanAssociateView implements Serializable {
	private static final long serialVersionUID = 1L;

	private String assesment;

	@Temporal(TemporalType.DATE)
	@Column(name="ASSIGN_DATE")
	private Date assignDate;

	@Column(name="ASSOCIATE_NAME")
	private String associateName;

	@Column(name="EMAIL_ADDRESS")
	private String emailAddress;

	@Column(name="PERCENT_COMPLETE")
	private BigDecimal percentComplete;

	@Column(name="PLAN_ASSOCIATE_ID")
	private int planAssociateId;

	@Column(name="PLAN_ID")
	private int planId;

	@Column(name="TASK_NAME")
	private String taskName;

	@Temporal(TemporalType.DATE)
	@Column(name="UPDATED_DATE")
	private Date updatedDate;

}