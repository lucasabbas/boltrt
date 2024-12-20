package;

class Person {
    var name : String;
    var age : Int;
    var birthday : String;

    public function new(name : String, age : Int, birthday : String) {
        this.name = name;
        this.age = age;
        this.birthday = birthday;
    }

    public function sayHello() {
        Sys.println("Hello, " + this.name + "!");
    }

    public function getAge() : Int {
        return this.age;
    }

    public function setAge(age : Int) {
        this.age = age;
    }

    public function getBirthday() : String {
        return this.birthday;
    }

    public function setBirthday(birthday : String) {
        this.birthday = birthday;
    }

    public function toString() : String {
        return "Person { name = " + this.name + ", age = " + this.age + ", birthday = " + this.birthday + " } ";
    }
}