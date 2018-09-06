public with sharing class dataSetup {
    public static void dataSetup() {
        // make some doctors we can have leads for

        list<account> doctors = new list<account>();
        doctors.add(new Account(Name='Bella Smile'));
        doctors.add(new Account(Name='Robert Quinn'));
        doctors.add(new Account(Name='CitiDent'));
        doctors.add(new Account(Name='Lee, Young & Ubaldo'));
        doctors.add(new Account(Name='Camilo Riano'));
        doctors.add(new Account(Name='Phoebe Good'));
        doctors.add(new Account(Name='Dr. Yan Kalika Image Orthodontics'));

        insert doctors;

        list<lead> patients = new list<lead>();

        lead l1 = new Lead(Company='Invisalign', Firstname='Jodi', Lastname='Innerfield', MobilePhone='555-549-4839', Email='jinnferfield@salesforce.com', PostalCode='94103');
        l1.Doctor__c = doctors[0].Id;
        patients.add(l1);

        lead l2 = new Lead(Company='Invisalign', Firstname='Shannon', Lastname='Duffy', MobilePhone='555-549-5839', Email='sduffy@salesforce.com', PostalCode='94103');
        l2.Doctor__c = doctors[1].Id;
        patients.add(l2);

        lead l3 = new Lead(Company='Invisalign', Firstname='Shane', Lastname='McLaughlin', MobilePhone='555-549-4849', Email='shane.mclaughlin@salesforce.com', PostalCode='77355');
        l3.Doctor__c = doctors[2].Id;
        patients.add(l3);

        lead l4 = new Lead(Company='Invisalign', Firstname='Marc', Lastname='Benioff', MobilePhone='415-549-4849', Email='ceo@salesforce.com', PostalCode='94102');
        l4.Doctor__c = doctors[3].Id;
        patients.add(l4);

        insert patients;

    }
}
