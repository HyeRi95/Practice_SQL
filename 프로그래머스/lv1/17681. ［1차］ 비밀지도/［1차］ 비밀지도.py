def solution(n, arr1, arr2):
    answer = []
    answer_arr1 =[]
    answer_arr2 =[]
    for j in range(len(arr1)) : 
        arr1_in =[]
        for k in range(n): 
            answer_atom = ''
            answer_atom = str(int(arr1[j]%2))
            arr1[j] = arr1[j]/2
            arr1_in.append(answer_atom) 
        
        answer_arr1.append(arr1_in)      
        
    for j in range(len(arr2)) : 
        answer_atom = ''
        arr2_in =[]
        for k in range(n): 
            answer_atom = str(int(arr2[j]%2))
            arr2[j] = arr2[j]/2
            arr2_in.append(answer_atom)
        
        answer_arr2.append(arr2_in)

    for l in range(len(arr1)):
        answer_string = ''
        for m in range(n):
            if answer_arr1[l][n-1-m] == '0' and answer_arr2[l][n-1-m] =='0' :
                answer_string = answer_string + ' '
            else :
                answer_string = answer_string + '#'
        answer.append(answer_string)
    
                
    return answer