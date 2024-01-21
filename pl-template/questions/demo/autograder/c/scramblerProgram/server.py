import random
from faker import Faker

def scramble_string(str, step):
    str_len = len(str)
    result = str
    for i in range(0, str_len, step):
        result = result[:i] + result[i:i + i][::-1]
        
    return result;

def generate(data):
    fake = Faker()
    f = open("tests/document.txt", "w")
    #f.write("Test\n")
    file_string = fake.sentence(nb_words=40, variable_nb_words=False)
    f.write(file_string)
    f.close()
    
    step = 40
    #expected_string = file_string[:number] + file_string[number:number + number][::-1] + file_string[number + number:]
    expected_string = scramble_string(file_string, step)
    data["correct_answers"]["a"] = expected_string
    print(data["correct_answers"])
    
    
