package climber.main.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table
public class Kontakt {

	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column
	@NotNull
	@NotEmpty(message="Required")
	private String ime;
	@Column
	@NotNull
	@NotEmpty(message="Required")
	private String telefon;
	@Column
	@NotNull
	@NotEmpty(message="Required")
	private String email;
	@Column
    @Size(min=5, max=500, message="min 5, max 1000 characters")
	private String poruka;
	@Column
    private boolean isSeen;
	
	
	public Kontakt() {
		// TODO Auto-generated constructor stub
	}


	public Kontakt( String ime, String telefon,String email, String poruka, boolean isSeen) {
		super();
		this.ime = ime;
		this.telefon = telefon;
		this.email = email;
		this.poruka = poruka;
		this.isSeen = isSeen;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getIme() {
		return ime;
	}


	public void setIme(String ime) {
		this.ime = ime;
	}


	public String getTelefon() {
		return telefon;
	}


	public void setTelefon(String telefon) {
		this.telefon = telefon;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPoruka() {
		return poruka;
	}


	public void setPoruka(String poruka) {
		this.poruka = poruka;
	}


	public boolean getIsSeen() {
		return isSeen;
	}


	public void setIsSeen(boolean isSeen) {
		this.isSeen = isSeen;
	}
	
	@Override
	public String toString() {
		
		return "("+ id +") - " + poruka;
	}
}
