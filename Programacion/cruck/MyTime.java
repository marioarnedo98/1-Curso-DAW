
public class MyTime {
	int hour;
	int minute;
	int second;
	public MyTime(){
		hour=0;
		minute=0;
		second=0;
		;}	
	
public void setTime(int hour,int minute,int second){
	this.hour=hour/24+(minute/60)+(second/3600);
	this.minute=minute +(second/60)-(minute/60*60);
	this.second=second -((second/60)*60) ;
}

public int getSecond() {
	return second;
}

public void setSecond(int second) {
	this.second = second -((second/60)*60);
}

public int getMinute() {
	return minute;
}

public void setMinute(int minute) {
	this.minute = minute +(second/60)-(minute/60*60);
}


public int getHour() {
	return hour;
}

public void setHour(int hour) {
	this.hour = hour/24+(minute/60)+(second/3600);

}





public void tostring(){
	if (minute>10 && second>10){
	System.out.println(hour+":"+minute+":"+second);
	}else{
		if (minute<10 && second<10){System.out.println(hour+":0"+minute+":0"+second);
		}else{
			if (minute<10 && second>10){System.out.println(hour+":0"+minute+":"+second);
			}else{if (minute>10 && second<10){System.out.println(hour+":"+minute+":0"+second)
				;
			}
		}
	}
	}
}

public void nextsecond(){
	second=second+1;
}

	public static void main(String[] args) {
 MyTime t1=new MyTime ();
 t1.tostring();
 t1.setTime(342, 4, 33);
 t1.tostring();
 t1.setHour(382);
 t1.setMinute(54);
 t1.setSecond(23);
 t1.tostring();
 t1.nextsecond();
 t1.tostring();
	}

}
