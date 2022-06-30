# Internship_assessment
### The scraper accepts html file from the webpage to be scraped due to unstable internet connection


def check(number):
    
    number_validity = []
    
    new_number = []
    
    # removing symbols and special characters from the number
    numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

    # cleaned number
    clean_num = [i for i in number if i in numbers]

    # numbers that start with zero and not followed by zero
    if clean_num[0] == "0" and clean_num[1] != 0:
    
        # check if the length of the number is 10
        if len(clean_num) == 10:
        
            num = "".join(clean_num)
        
            new_number.append(num)
            
            number_validity.append(True)
            
            results = dict(zip(new_number,number_validity))
                           
            return results
    
        else:
            
            new_number.append(number)
                           
            number_validity.append(False)
                           
            results = dict(zip(new_number,number_validity))
            
            return results
        
        # checking for numbers with the area code +27
    elif clean_num[0:2] == ["2", "7"] and len(clean_num) == 11 and new_number[2] != '0':
                           
                           
        num = "0" +''.join(clean_num[2:])
                           
        new_number.append(num)
    
        number_validity.append(True)
        
        results = dict(zip(new_number,number_validity))
            
        return results

    # checking for numbers with less than the correct length       
    elif clean_num[0] != "0" and len(clean_num) ==9:
        
        num = "0" +"".join(clean_num)
        
        new_number.append(num)
                       
        number_validity.append(True)
        
        results = dict(zip(new_number,number_validity))
        
        return results
    
    else:
        
        new_number.append(clean_num) 
                       
        number_validity.append(False)
                       
        results = dict(zip(new_number,number_validity))
        
        return results
        
