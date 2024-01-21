#include "source.h"
#include <stdlib.h>
#include <string.h>

Person *person_create(char* name, int age) {
    Person* new_person =  malloc(sizeof(Person));
    new_person -> name = strdup(name);
    new_person -> age = age;
    
    return new_person;
}

void  person_destroy(Person* person) {

}

char* person_get_name(Person* person) {
    return person -> name;
}

int person_get_age(Person* person) {
    return person -> age;

}

char *person_set_name(Person* person) {

}

int person_set_age(Person* person) {

}