package climber.main;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import climber.main.dao.ItemDAO;
import climber.main.dao.KontaktDAO;
import climber.main.dao.UslugeDAO;
import climber.main.dao.VisinskiradoviDAO;
import climber.main.entity.Kontakt;
import climber.main.entity.Visinskiradovi;



@Controller
@RequestMapping("/")
public class FrontController {

	@Autowired
	private UslugeDAO uslugeDAO;
	@Autowired
	private KontaktDAO kontaktDAO;
	@Autowired
	private VisinskiradoviDAO vrDAO;
	@Autowired
	private ItemDAO itemDAO;
	
	@RequestMapping({"/", "/index-page"})
	public String getIndexPage(Model model) {
		
		model.addAttribute("vr", vrDAO.getVisinskiradoviList());
		model.addAttribute("items", itemDAO.getItemsOnSlideBar());
		model.addAttribute("kontakt", new Kontakt());
	    return "front/index-page";
	}
	
	
	
	@RequestMapping("/usluge-page")
	public String getUslugePage(Model model) {
		model.addAttribute("uslugeList", uslugeDAO.getUslugeList());
		return "front/usluge-page";
	}
	
}
