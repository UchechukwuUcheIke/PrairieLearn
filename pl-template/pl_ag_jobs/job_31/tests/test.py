#! /usr/bin/python3

import cgrader
import random
from faker import Faker

def scramble_string(str, step):
    str_len = len(str)
    result = str
    for i in range(0, str_len, step):
        result = result[:i] + result[i:i + i][::-1]
        
    return result;
    
def generateFileText():
    fake = Faker()
    file_string = fake.sentence(nb_words=40, variable_nb_words=False)
    return file_string
    
class QuestionGrader(cgrader.CGrader):


    def tests(self):
        file_path = "/grade/tests/document.txt"
        f = open(file_path, "w")
        
        #Generate and scramble text in document.txt
        file_string = generateFileText()
        scramble_string(file_string, 40)
        
        f.write(file_string)
        f.close()
    
        #Give user read permissiosn for document.txt
        self.change_mode(file_path, '644')
        
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