package climber.main.dao;

import java.util.List;

import climber.main.entity.Item;


public interface ItemDAO {
	 public List<Item> getItemList();
		
		public void saveItem(Item item);
		
		public Item getItem(int id);
		
		public void deleteItem(int id);

		public List<Item> getItemsOnSlideBar();


}
