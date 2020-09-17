package adpproject.jumpstartproject.Entity;

import java.io.Serializable;
import javax.persistence.*;

import lombok.Data;


/**
 * The persistent class for the plan database table.
 * 
 */
@Entity
@Data
public class Plan implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="PLAN_ID")
	private int planId;

	private String assesment;

	@Column(name="TASK_NAME")
	private String taskName;

	@Column(name="USEFUL_LINK")
	private String usefulLink;

}