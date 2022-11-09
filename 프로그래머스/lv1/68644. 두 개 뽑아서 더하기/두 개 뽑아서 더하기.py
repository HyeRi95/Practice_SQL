def solution(numbers):
    before_answer =[]
    answer = []
    for i in range(len(numbers)):
        for j in range(i+1,len(numbers)):
            list_sum = numbers[i]+numbers[j]
            before_answer.append(list_sum)

    for value in before_answer : 
        if value not in answer:
            answer.append(value) 
    answer.sort()
        
    return answer