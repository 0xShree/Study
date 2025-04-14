public class Main {
    public static void main(String[] args) {
        for(int i = 0; i < 5; i++){
            Student student = new Student("23000" + i,
                    switch(i){
                    case 1 -> "Shree";
                    case 2 -> "Vathsa";
                    case 3 -> "Ammu";
                    case 4 -> "Tim";
                    case 5 -> "Oyster";
                    default -> "Anonymous";
                    },
                    "14/05/2025",
                    "Java Master class");
            System.out.println(student);
        }
        for(int i = 1; i <= 5; i++){
            SpecStudent student = new SpecStudent("23000" + i,
                    switch(i){
                        case 1 -> "Shree";
                        case 2 -> "Vathsa";
                        case 3 -> "Ammu";
                        case 4 -> "Tim";
                        case 5 -> "Oyster";
                        default -> "Anonymous";
                    },
                    "14/05/2025",
                    "Java Master class");
            System.out.println(student);
        }

        Student pojoStudent = new Student("23006", "Ann", "14/04/2025", "Java Master Class");
        SpecStudent recordStudent = new SpecStudent("23006", "Ann", "14/04/2025", "Java Master Class");

        System.out.println(pojoStudent.getName() + " has taken class " + pojoStudent.getClass().getName());
        System.out.println(recordStudent.name() + " has taken class " + recordStudent.ClassList()); // no get prefix

        pojoStudent.setClassList(pojoStudent.getClassList() + ", Java OCP Class");
//        recordStudent.setClassList(recordStudent.ClassList() + ", Java OCP Class"); // cannot set since members immutable
    }
}
