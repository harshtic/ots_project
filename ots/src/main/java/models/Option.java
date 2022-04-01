package models;

public class Option {
	private Integer optionId;
	private String option;
	private Question question;
	public Option() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Option(Integer optionId, String option, Question question) {
		super();
		this.optionId = optionId;
		this.option = option;
		this.question = question;
	}
	public Integer getOptionId() {
		return optionId;
	}
	public void setOptionId(Integer optionId) {
		this.optionId = optionId;
	}
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public Question getQuestion() {
		return question;
	}
	public void setQuestion(Question question) {
		this.question = question;
	}
	
	

}
