time = datenow;
Calendar now = Calendar.getInstance();

if (time >= fertilizer1_date) {
  System.out.println("ใส่ปุ๋ยครั้งที่ 1");
} else if (time < fertilizer1_date) {
  System.out.println("ไม่มีแจ้งเตือน");
} else  if (time >= fertilizer2_date)     {
  System.out.println("ใส่ปุ๋ยครั้งที่ 2");
}else    {
  System.out.println("ไม่มีแจ้งเตือน");
}else  if (time >= harvest_date){
  System.out.println("เก็บเกี่ยว");
}else {
  System.out.println("ไม่มีแจ้งเตือน");
}