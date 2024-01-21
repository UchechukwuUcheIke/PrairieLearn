#! /usr/bin/python3

import cgrader

class QuestionGrader(cgrader.CGrader):


    def tests(self):
        
        #Give user read permissiosn for document.txt
        
        self.change_mode("/grade/tests/document.txt", '644')
        
        # Retrieving parameters from server.py
        #expected_string = self.data["correct_answers"]["c"]
        print(self.data["correct_answers"])
        expected_string = self.data["correct_answers"]["a"]
        
        # Creating expected string from format.h
        executable_string = "./scrambler"
        # Include tests here
        
        self.test_compile_file("scrambler.c",
                                "scrambler",
                                name="Compilation Test",
                                flags="-I/grade/tests",
                                points=0,
                                enable_asan=True)
                                
        
        
        self.test_run(executable_string,
                    name="Memory Leak Test",
                    reject_output=['AddressSanitizer'])
                    
                    
        
        self.test_run(executable_string, 
                    name="Functionality Test",
                    exp_output=expected_string)
        '''        
        self.test_run(faulty_executable, 
                    name="Edge Case Test",
                    exp_output=usage_string)
        '''

g = QuestionGrader()
g.start()