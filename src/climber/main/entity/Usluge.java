package climber.main.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Usluge {
	
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column
	private String naziv;
	@Column
	private String opis;
	@Column
	private String slika;
	
	public Usluge() {
		// TODO Auto-generated constructor stub
	}

	

	public Usluge(int id, String naziv, String opis, String slika) {
		super();
		this.id = id;
		this.naziv = naziv;
		this.opis = opis;
		this.slika = slika;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getNaziv() {
		return naziv;
	}

	public void setNaziv(String naziv) {
		this.naziv = naziv;
	}

	public String getOpis() {
		return opis;
	}

	public void setOpis(String opis) {
		this.opis = opis;
	}

	public String getSlika() {
		return slika;
	}

	public void setSlika(String slika) {
		this.slika = slika;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "("+ id +") - " + naziv;
	}

}
