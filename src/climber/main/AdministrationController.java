package climber.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import climber.main.dao.ItemDAO;
import climber.main.dao.KontaktDAO;
import climber.main.dao.UslugeDAO;
import climber.main.dao.VisinskiradoviDAO;
import climber.main.entity.Item;
import climber.main.entity.Kontakt;
import climber.main.entity.Usluge;
import climber.main.entity.Visinskiradovi;





@Controller
@RequestMapping("/administration")

public class AdministrationController {
	
	@Autowired
	private UslugeDAO uslugeDAO;
	@Autowired
	private KontaktDAO kontaktDAO;
	@Autowired
	private VisinskiradoviDAO vrDAO;
	@Autowired
	private ItemDAO itemDAO;
	
	
	//usluge
	
	@RequestMapping("/usluge-list")
	public String getUslugeList(Model model) {
		
		List<Usluge> uslugeList = uslugeDAO.getUslugeList();
		model.addAttribute("uslugeList", uslugeList);
		model.addAttribute("kontaktCount", kontaktDAO.getUnseenKontaktCount());
		return "usluge-list";
	}
	
	
	
	@RequestMapping("/usluge-form")
	public String getUslugeForm(Model model) {
		
		Usluge usluge = new Usluge();
		model.addAttribute("usluge", usluge);
		model.addAttribute("kontaktCount", kontaktDAO.getUnseenKontaktCount());
		return "usluge-form";
	}

	
	
	@RequestMapping("/usluge-save")
	public String saveUsluge( @ModelAttribute Usluge usluge) {
		
	    uslugeDAO.saveUsluge(usluge);
		return "redirect:/administration/usluge-list";
		
	}
	

	@RequestMapping("/usluge-update-form")
	public String getUslugeUpdateForm(@RequestParam int id, Model model) {
		
		Usluge usluge = uslugeDAO.getUsluge(id);
		model.addAttribute("usluge", usluge);
	    return"usluge-form";
	}
	
	
	
	@RequestMapping("/usluge-delete")
	public String deleteUsluge(@RequestParam int id) {
		
		uslugeDAO.deleteUsluge(id);
		return "redirect:/administration/usluge-list";
	}
		
	
	//kontakt
	
	@RequestMapping("/kontakt-list")
	public String getContactList(Model model) {
		model.addAttribute("kontaktList", kontaktDAO.getAllKontakt());
		model.addAttribute("kontaktCount", kontaktDAO.getUnseenKontaktCount());
		
		return "kontakt-list";
	}
	
	@RequestMapping("/kontakt-seen")
	public String getMarkKontaktSeen(@RequestParam int id) {
		Kontakt kontakt = kontaktDAO.getKontakt(id);
		kontakt.setIsSeen(true);
		kontaktDAO.saveKontakt(kontakt);
		return "redirect:kontakt-list";
	}
	
	
	//visinski radovi
	
	@RequestMapping("/vr-list")
	public String getVrList(Model model) {
		
		List<Visinskiradovi>  visinskiradoviList = vrDAO.getVisinskiradoviList();
		model.addAttribute("visinskiradoviList",  visinskiradoviList);
		model.addAttribute("kontaktCount", kontaktDAO.getUnseenKontaktCount());
		return "vr-list";
	}
	
	
	
	@RequestMapping("/vr-form")
	public String getVrForm(Model model) {
		
		Visinskiradovi vr = new Visinskiradovi();
		model.addAttribute("vr", vr);
		model.addAttribute("kontaktCount", kontaktDAO.getUnseenKontaktCount());
		return "vr-form";
	}

	
	
	@RequestMapping("/vr-save")
	public String saveVisinskiradovi( @ModelAttribute Visinskiradovi vr) {
		
	    vrDAO.saveVisinskiradovi(vr);
		return "redirect:/administration/vr-list";
		
	}
	

	@RequestMapping("/vr-update-form")
	public String getVrUpdateForm(@RequestParam int id, Model model) {
		
		Visinskiradovi vr = vrDAO.getVisinskiradovi(id);
		model.addAttribute("vr", vr);
	    return"vr-form";
	}
	
	
	
	@RequestMapping("/vr-delete")
	public String deleteVisinskiradovi(@RequestParam int id) {
		
		vrDAO.deleteVisinskiradovi(id);
		return "redirect:/administration/vr-list";
	}
		

	//item
	
	@RequestMapping("/item-list")
	public String getSliderItemList(Model model) {
		
		List<Item>itemList = itemDAO.getItemList();
		model.addAttribute("kontaktCount", kontaktDAO.getUnseenKontaktCount());
		model.addAttribute("itemList", itemList);
		
		
		return "item-list";

    }
	@RequestMapping("/item-form")
	public String getItemForm(Model model) {
		
		Item item = new Item();
		model.addAttribute("item", item);
		model.addAttribute("kontaktCount", kontaktDAO.getUnseenKontaktCount());
		
		return "item-form";
	}
	
	@RequestMapping("/item-save")
	public String saveItem(@ModelAttribute Item item) {
		
		itemDAO.saveItem(item);
		return "redirect:/administration/item-list";
		
	}
	@RequestMapping("/item-form-update")
	public String getItemUpdateForm(@RequestParam int id, Model model) {
		Item item = itemDAO.getItem(id);
		model.addAttribute("item", item);
		model.addAttribute("kontaktCount", kontaktDAO.getUnseenKontaktCount());
		
		return"item-form";
	}
	
	@RequestMapping("/item-delete")
	public String deleteItem(@RequestParam int id) {
		itemDAO.deleteItem(id);
		return "redirect:/administration/item-list";
	}
	
	
	
	
	
	
	
	
	
}
