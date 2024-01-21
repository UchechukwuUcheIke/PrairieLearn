typedef struct Person {
    /*Name of the person, should ideally be a string allocated on the heap*/
    char* name;
    /*Age of the person*/
    int age;
} Person;

/*
    Takes a string for the name and an integer for the age
    The name assigned to the Person struct is a deep copy
    Returns a pointer to a Person struct allocated on the heap
*/
Person *person_create(char* name, int age);
/*
    Takes the reference to a person struct and frees the memory of the associated with the struct
*/
void  person_destroy(Person* person);

/*
    Returns a deep copy of the person's name
*/
char* person_get_name(Person* person);

/*
    Returns a Person object's age
*/
int person_get_age(Person* person);

/*
    Sets a Person object's name
*/
void person_set_name(Person* person, char *new_name);

/*
    Sets a Person object's age
*/
void person_set_age(Person* person, int new_age);