@isTest
public class TestVerifyDate{
   
    static testMethod  void TestDates(){
        date dt1 = Date.newInstance(1960, 2, 17);
        date dt2 = Date.newInstance(1990, 2, 17);
        date dt3 = Date.NewInstance(1960, 2, 20);
        VerifyDate.CheckDates(dt1,dt2);
        VerifyDate.CheckDates(dt1,dt3);
    }
}