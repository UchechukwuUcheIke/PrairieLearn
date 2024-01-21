#include <stdlib.h>
#include <check.h>
#include <time.h>
#include <string.h>

#include "person.h"

/**
Tests that person_create returns a person with the name and age specified
*/
START_TEST(test_person_create) {

    char *name = "Uche";
    int age = 20;
    Person *person = person_create(name, age);

    ck_assert_msg(person != NULL, "The pointer returned is null");

    char *returned_name = person -> name;
    int returned_age = person -> age;

    ck_assert_msg(strcmp(returned_name, name) == 0, "The name of the Person doesn't match what was given");
    ck_assert_msg(returned_age == age, "The age of the Person doesn't match what was given");
    
}
END_TEST

/**
Tests that person_create returns a person with a name that is a deep copy of the one given
*/
START_TEST(test_person_create_name) {

    char *name = "Uche";
    char *person_name = strdup(name);

    int age = 20;
    Person *person = person_create(person_name, age);

    char *returned_name = person -> name;

    person_name[0] = 'Z';
    ck_assert_msg(strcmp(returned_name, name) == 0, "The name of the Person is not a deep copy of the name given");
}
END_TEST

/**
Tests that person_destroy frees the memory of the person
*/
START_TEST(test_person_destroy) {

    char *name = "Uche";
    int age = 20;
    Person *person = person_create(name, age);


    person_destroy(person);

    ck_assert_msg(__asan_address_is_poisoned(person), "Deleted Person has not been freed");
    
}
END_TEST

/**
Tests that person_get_name gets the correct name
*/
START_TEST(test_person_get_name) {

    char *name = "Uche";
    int age = 20;
    Person *person = person_create(name, age);

    char *returned_name = person_get_name(person);

    ck_assert_msg(strcmp(returned_name, name) == 0, "The name of the Person doesn't match what was given by person_get_name");
    
}
END_TEST

/**
Tests that person_get_age gets the correct age
*/
START_TEST(test_person_get_age) {

    char *name = "Uche";
    int age = 20;
    Person *person = person_create(name, age);

    int returned_age = person_get_age(person);

    ck_assert_msg(returned_age == age, "The age of the Person doesn't match what was given by person_get_age");
    
}
END_TEST

/**
Tests that person_set_name sets the correct name
*/
START_TEST(test_person_set_name) {

    char *name = "Uche";
    char *new_name = "Odi";
    int age = 20;
    Person *person = person_create(name, age);

    person_set_name(person, new_name);
    char *returned_name = person -> name;

    ck_assert_msg(strcmp(returned_name, new_name) == 0, "The age of the Person doesn't match what was given by person_set_name");
    
}
END_TEST

/**
Tests that person_set_age sets the correct age
*/
START_TEST(test_person_set_age) {

    char *name = "Uche";
    int new_age = 21;
    int age = 20;
    Person *person = person_create(name, age);

    person_set_age(person, new_age);
    int returned_age = person -> age;

    ck_assert_msg(returned_age == new_age, "The age of the Person doesn't match what was given by person_set_name");
    
}
END_TEST



int main(int argc, char *argv[]) {

  pl_setup_asan_hooks();
  srandom(time(NULL));

  Suite *s = suite_create("Person Struct");

  TCase *tc_person_create = tcase_create("Creating a Person");
  tcase_add_test(tc_person_create, test_person_create);
  tcase_add_test(tc_person_create, test_person_create_name);
  suite_add_tcase(s, tc_person_create);

  TCase *tc_person_destroy = tcase_create("Destroying a Person");
  tcase_add_test(tc_person_destroy, test_person_destroy);
  suite_add_tcase(s, tc_person_destroy);

  TCase *tc_person_get = tcase_create("Getting a Person");
  tcase_add_test(tc_person_get, test_person_get_name);
  tcase_add_test(tc_person_get, test_person_get_age);
  suite_add_tcase(s, tc_person_get);

  TCase *tc_person_set = tcase_create("Setting a Person");
  tcase_add_test(tc_person_set, test_person_set_name);
  tcase_add_test(tc_person_set, test_person_set_age);
  suite_add_tcase(s, tc_person_set);

  SRunner *sr = srunner_create(s);
  
  srunner_run_all(sr, CK_NORMAL);
  srunner_free(sr);
  return 0;
}