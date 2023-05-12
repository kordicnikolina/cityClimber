package climber.main.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Item {
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column
	private String slika;
	@Column
	private String naslov;
	@Column
	private String text;
	@Column
	private String link;
	@Column
	private String linkurl;
	@Column
	private boolean isOnSlidebar;

	public Item() {
		// TODO Auto-generated constructor stub
	}

	public Item(int id, String slika, String naslov, String text, String link, String linkurl, boolean isOnSlidebar) {
		super();
		this.id = id;
		this.slika = slika;
		this.naslov = naslov;
		this.text = text;
		this.link = link;
		this.linkurl = linkurl;
		this.isOnSlidebar = isOnSlidebar;
	}
	
	public Item(String linkurl) {
		super();
		this.linkurl=linkurl;
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

	public String getNaslov() {
		return naslov;
	}

	public void setNaslov(String naslov) {
		this.naslov = naslov;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getLinkurl() {
		return linkurl;
	}

	public void setLinkurl(String linkurl) {
		this.linkurl = linkurl;
	}

	public boolean getIsOnSlidebar() {
		return isOnSlidebar;
	}

	public void setIsOnSlidebar(boolean isOnSlidebar) {
		this.isOnSlidebar = isOnSlidebar;
	}
	@Override
    public String toString() {
    	
    	return "("+ id +") - " + naslov;
    }

}
