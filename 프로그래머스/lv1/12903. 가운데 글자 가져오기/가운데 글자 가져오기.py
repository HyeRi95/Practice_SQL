def solution(s):
    n=len(s)
    if n%2 == 1 :
        a = int(n/2)+1
        answer = s[a-1]
    else:
        a = int(n/2)
        answer = s[a-1:a+1]
    return answer