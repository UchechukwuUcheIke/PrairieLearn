#! /usr/bin/python3

import cgrader
import random

class QuestionGrader(cgrader.CGrader):


    def tests(self):
        # Get the variables for program
        operand1 = random.randint(1, 10)
        operand2 = random.randint(1, 10)
        product = operand1 * operand2
        
        # Executable strings and usage strings for autograding
        usage_string = "\n\t ./multiplier <operand0> <operand1>\n\n"
        faulty_executable = "./multiplier"
        executable_string = "./multiplier " + str(operand1) + " " + str(operand2)
        expected_string = "\n\t " + str(operand1) + " * " + str(operand2) + " = " + str(product) + "\n\n"

        self.test_compile_file("multiplier.c",
                                "multiplier",
                                name="Compilation Test",
                                add_c_file="/grade/tests/format.c",
                                flags="-I/grade/tests",
                                points=0)
                                

        
        self.test_run(executable_string, 
                    name="Functionality Test",
                    exp_output=expected_string)
        
        self.test_run(faulty_executable, 
                    name="Edge Case Test",
                    exp_output=usage_string)
        
        #Compile program again with memory leak tests
        self.compile_file("multiplier.c",
                                "multiplier",
                                add_c_file="/grade/tests/format.c",
                                flags="-I/grade/tests",
                                enable_asan=True)

        self.test_run(executable_string,
                    name="Memory Leak Test",
                    reject_output=['AddressSanitizer'],)
                    
g = QuestionGrader()
g.start()