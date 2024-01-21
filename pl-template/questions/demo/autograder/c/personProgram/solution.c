#include "person.h"
#include <stdlib.h>
#include <string.h>

Person *person_create(char* name, int age) {
    Person *new_person = malloc(sizeof(Person));
    new_person -> name = strdup(name);
    new_person -> age = age;
}

void  person_destroy(Person* person) {
    free(person -> name);
    free(person);
}

char* person_get_name(Person* person) {
    return person -> name;
}

int person_get_age(Person* person) {
    return person -> age;
}

void person_set_name(Person* person, char *new_name) {
    free(person -> name);
    person -> name = strdup(new_name);
}

void person_set_age(Person* person, int new_age) {
    person -> age = new_age;
}