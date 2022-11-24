def solution(s):
    answer = ''
    voca = s.split(' ')
    for i in range(len(voca)):
        for j in range(len(voca[i])):
            if j/2 == 0 or j%2==0:
                answer = answer+(voca[i][j].upper())
            elif j%2 == 1:
                answer =answer+(voca[i][j].lower())
        answer = answer + ' '
    answer = answer[:-1]
    
    return answer