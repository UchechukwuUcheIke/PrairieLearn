import random


def generate(data):
    # Define the sides of the rectangle as random intervals
    a = random.randint(2, 5)
    b = random.randint(11, 19)

    # Put these two integers into data['params']
    data["params"]["a"] = a
    data["params"]["b"] = b

    # Compute the sum of these two integers
    data["params"]["distractor1"] = (a*b)/2
    data["params"]["distractor2"] = 2*(a*b)
    data["params"]["distractor3"] = 2*(a + b)
    data["params"]["distractor4"] = (a + b)
    
    trueArea = a*b

    # Put the sum into data['correct_answers']
    data["params"]["truearea"] = trueArea
