package models;

public class Status {
	private Integer statusId;
	private String status;
	public Status() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Status(Integer statusId, String status) {
		super();
		this.statusId = statusId;
		this.status = status;
	}
	public Integer getStatusId() {
		return statusId;
	}
	public void setStatusId(Integer statusId) {
		this.statusId = statusId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	

}
