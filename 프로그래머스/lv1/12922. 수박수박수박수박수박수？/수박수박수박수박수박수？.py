def solution(n):
    sb = '수박'
    s='수'
    a = int(n/2)
    answer = sb*a
    if n%2 == 1 :
        answer = answer + s    
    return answer