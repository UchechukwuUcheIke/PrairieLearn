#include <stdlib.h>
#include <check.h>
#include <time.h>
#include <string.h>

#include "person.h"

/**
Tests that person_create returns a person with the name and age specified
*/
START_TEST(test_person_memory) {

    char *name = "Uche";
    int age = 20;

    Person *person = person_create(name, age);

    ck_assert_msg(!__asan_region_is_poisoned(person, sizeof(Person)), "Too little memory was allocated for the struct");

    char *new_name = "Odi";
    int new_age = 21;

    char *returned_name = person_get_name(person);
    int returned_age = person_get_age(person);

    person_set_name(person, new_name);
    person_set_age(person, new_age);

    person_destroy(person);

    ck_assert_msg(__asan_address_is_poisoned(person), "Deleted Person has not been freed");
}
END_TEST


int main(int argc, char *argv[]) {

  pl_setup_asan_hooks();
  srandom(time(NULL));

  Suite *s = suite_create("Person Struct");

  TCase *tc_person_memory = tcase_create("Memory Leak Test");
  tcase_add_test(tc_person_memory, test_person_memory);
  suite_add_tcase(s, tc_person_memory);

  SRunner *sr = srunner_create(s);
  
  srunner_run_all(sr, CK_NORMAL);
  srunner_free(sr);
  return 0;
}