package SIMS.Entity;

import java.util.Date;

public class Teacher extends User{
	private Date EntryYear;
	private _Class TeachClass;
	private double Salary;
	
	public Teacher(String name, String mail, String password, byte sex, byte isDelete, Date entryYear,
			_Class teachClass, double salary) {
		super(name, mail, password, sex, isDelete);
		EntryYear = entryYear;
		TeachClass = teachClass;
		Salary = salary;
	}
	public Date getEntryYear() {
		return EntryYear;
	}

	public void setEntryYear(Date entryYear) {
		EntryYear = entryYear;
	}

	public _Class getTeachClass() {
		return TeachClass;
	}

	public void setTeachClass(_Class teachClass) {
		TeachClass = teachClass;
	}

	public double getSalary() {
		return Salary;
	}

	public void setSalary(double salary) {
		Salary = salary;
	}
	@Override
	public String toString() {
		return "Teacher [EntryYear=" + EntryYear + ", TeachClass=" + TeachClass + ", Salary=" + Salary + "]";
	}
	
	
	
}
