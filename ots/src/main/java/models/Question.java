package models;

public class Question {
	private Integer questionId;
	private String question;
	private Integer marks;
	private String time;
	private Exam exam;
	
	public Question() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Question(Integer questionId, String question, Integer marks, String time, Exam exam) {
		super();
		this.questionId = questionId;
		this.question = question;
		this.marks = marks;
		this.time = time;
		this.exam = exam;
	}
	public Integer getQuestionId() {
		return questionId;
	}
	public void setQuestionId(Integer questionId) {
		this.questionId = questionId;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public Integer getMarks() {
		return marks;
	}
	public void setMarks(Integer marks) {
		this.marks = marks;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public Exam getExam() {
		return exam;
	}
	public void setExam(Exam exam) {
		this.exam = exam;
	}
}
