public  class main {
    public static class trouble {
        int id;
        float geo_longitude;
        float geo_latitude;
        char dat;
        char info;
        short contact_id;
        short status_id;

    }
    public static class contact {
        int id;
        char name;
        byte phone;
        char mail;
    }
    public static class status_log{
        int id;
        char status;
    }
    public static class trouble_history {
        int id;
        char dat;
        char status;
        short id_trouble;
        short human_id;
        byte human_contact;
    }
    public static class human{
        int id;
        char fio;
    }
}