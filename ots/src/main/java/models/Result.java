package models;

public class Result {
	private Integer resultId;
	private Integer score;
	private Exam exam;
	private Student student;
	public Result() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Result(Integer resultId, Integer score, Exam exam, Student student) {
		super();
		this.resultId = resultId;
		this.score = score;
		this.exam = exam;
		this.student = student;
	}
	public Integer getResultId() {
		return resultId;
	}
	public void setResultId(Integer resultId) {
		this.resultId = resultId;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}
	public Exam getExam() {
		return exam;
	}
	public void setExam(Exam exam) {
		this.exam = exam;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
}
