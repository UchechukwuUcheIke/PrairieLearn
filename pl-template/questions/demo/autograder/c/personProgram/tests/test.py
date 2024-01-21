#! /usr/bin/python3

import cgrader

class QuestionGrader(cgrader.CGrader):


    def tests(self):
        
        # Creating executable string for program
        executable_string = "./person"
        
        # Include tests here
        
        self.test_compile_file("person.c",
                                "person",
                                name="Compilation Test",
                                add_c_file="/grade/tests/main.c",
                                flags="-I/grade/tests",
                                pkg_config_flags="check",
                                points=0,
                                enable_asan=True)
                                
        
        
        self.run_check_suite("./person", env={"ASAN_OPTIONS": "detect_leaks=0"})
        
        self.compile_file("person.c",
                                "person",
                                add_c_file="/grade/tests/memory_tests.c",
                                flags="-I/grade/tests",
                                pkg_config_flags="check",
                                enable_asan=True)
                                
        self.run_check_suite("./person")

g = QuestionGrader()
g.start()