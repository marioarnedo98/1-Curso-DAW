import java.*;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;

public class BirthdayDiary {
	//public ArrayList<String> BirthdayName;
	//public Calendar date = Calendar.getInstance();
	public HashMap<String, Calendar> map;
	Calendar miFecha=Calendar.getInstance();

	public BirthdayDiary() {
		map = new HashMap<String, Calendar>();
	}

	public void AddBirthday(String name, int day, int month, int year) {
		//Crea un objeto Calendar, con esos tres datos... miFecha
		
		miFecha.set(Calendar.YEAR, year);
		miFecha.set(Calendar.MONTH, month);
		miFecha.set(Calendar.DATE, day);
		map.put(name, miFecha);
	}

	public String GetBirthdayFor(String search) {
		
		if (map.containsKey(search)) {
			return "You search for "+search+ " :"+miFecha.get(Calendar.DATE)+"/"+miFecha.get(Calendar.MONTH)+"/"+miFecha.get(Calendar.YEAR);
		}
		else {
			return "Nobody found with " + search;
		}
	}

	public void printDiary() {
		
		for (int i = 0; i < map.size(); i++) {
			int month = miFecha.get(Calendar.MONTH);
			switch(month) {
			case 0: month=1;
			break;
			case 1: month=2;
			break;
			case 2: month=3;
			break;
			case 3: month=4;
			break;
			case 4: month=5;
			break;
			case 5: month=6;
			break;
			case 6: month=7;
			break;
			case 7: month=8;
			break;
			case 8: month=9;
			break;
			case 9: month=10;
			break;
			case 10: month=11;
			break;
			case 11: month=12;
			break;
			}
			System.out.println(miFecha.get(Calendar.DATE)+"/"+month+"/"+miFecha.get(Calendar.YEAR));
		}
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		BirthdayDiary j = new BirthdayDiary();
		j.AddBirthday("Mario", 3, 11, 1998);
		System.out.println(j.GetBirthdayFor("Juana"));
		j.printDiary();
	}

}
