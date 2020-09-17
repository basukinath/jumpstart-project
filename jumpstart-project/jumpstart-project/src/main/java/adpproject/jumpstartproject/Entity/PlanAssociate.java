package adpproject.jumpstartproject.Entity;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;

import java.math.BigDecimal;
import java.util.Date;


/**
 * The persistent class for the plan_associate database table.
 * 
 */
@Entity
@Table(name="plan_associate")
@Data
public class PlanAssociate implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="PLAN_ASSOCIATE_ID")
	private int planAssociateId;

	@Temporal(TemporalType.DATE)
	@Column(name="ASSIGN_DATE")
	private Date assignDate;

	@Column(name="ASSOCIATE_ID")
	private int associateId;

	@Column(name="PERCENT_COMPLETE")
	private BigDecimal percentComplete;

	@Column(name="PLAN_ID")
	private int planId;

	@Temporal(TemporalType.DATE)
	@Column(name="UPDATED_DATE")
	private Date updatedDate;

}