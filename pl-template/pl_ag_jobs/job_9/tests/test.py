#! /usr/bin/python3

import cgrader
import random

class QuestionGrader(cgrader.CGrader):


    def tests(self):
        # Executable strings and usage strings for autograding
        executable_string = "./helloworld"
        expected_string = "Hi! My name is "

        self.test_compile_file("helloworld.c",
                                "helloworld",
                                name="Compilation Test",
                                flags="-I/grade/tests",
                                add_c_file="/grade/tests/vars.c",
                                points=0)
                                

        
        self.test_run(executable_string, 
                    name="Functionality Test",
                    exp_output=expected_string)
        
        #Compile program again with memory leak tests
        self.compile_file("helloworld.c",
                                "helloworld",
                                flags="-I/grade/tests",
                                add_c_file="/grade/tests/vars.c",
                                enable_asan=True)

        self.test_run(executable_string,
                    name="Memory Leak Test",
                    reject_output=['AddressSanitizer'],)
                    
g = QuestionGrader()
g.start()