package models;

public class ExamKP {
	private Integer examKpId;
	private String key;
	private String password;
	private Exam exam;
	public ExamKP() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ExamKP(Integer examKpId, String key, String password, Exam exam) {
		super();
		this.examKpId = examKpId;
		this.key = key;
		this.password = password;
		this.exam = exam;
	}
	public Integer getExamKpId() {
		return examKpId;
	}
	public void setExamKpId(Integer examKpId) {
		this.examKpId = examKpId;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Exam getExam() {
		return exam;
	}
	public void setExam(Exam exam) {
		this.exam = exam;
	}
	
	

}
