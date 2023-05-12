package climber.main.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table 
@Entity
public class Visinskiradovi {

	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column
	private String slika;
	@Column
	private String text1;
	@Column
	private String text2;
	@Column
	private String text3;
	
	public Visinskiradovi() {
		// TODO Auto-generated constructor stub
	}
	
	public Visinskiradovi(int id) {
		super();
		this.id = id;
	}



	public Visinskiradovi(int id, String slika, String text1, String text2, String text3) {
		super();
		this.id = id;
		this.slika = slika;
		this.text1 = text1;
		this.text2 = text2;
		this.text3 = text3;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSlika() {
		return slika;
	}

	public void setSlika(String slika) {
		this.slika = slika;
	}

	public String getText1() {
		return text1;
	}

	public void setText1(String text1) {
		this.text1 = text1;
	}

	public String getText2() {
		return text2;
	}

	public void setText2(String text2) {
		this.text2 = text2;
	}

	public String getText3() {
		return text3;
	}

	public void setText3(String text3) {
		this.text3 = text3;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "("+ id +") - " + slika;
	}
}
