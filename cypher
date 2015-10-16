#Caesar Cipher

#Encryption by shifting alphabets by a certain position
#EG. secret - shift of 3 - s(go down by 3) , e(go down by 3), etc

def main():
    """ This is the main function """
    
    #Create a list of alphabets as references
    alList = [ "a","b","c","d","e",
               "f","g","h","i","j",
               "k","l","m","n","o",
               "p","q","r","s","t",
               "u","v","w","x","y",
               "z" ]

    #Main Loop
    loop = True
    
    while loop:

        #Interface and input of user
        interface()
        userInput = int(input("Please select your option: "))

        #Option selected
        if userInput == 1:
            userMessage = input("Please enter a code you would want to encrypt: ")
            amountShift = int(input("Please enter the amount of shift: "))
            print("Your new code is ", encrytion(userMessage,amountShift,alList))

            #Continuation of Program
            print()
            userCont = input("Would you like to use the program again: y/n ")
            if userCont == "y":
                loop = True
            else:
                loop = False


        elif userInput == 2:
            userMessage = input("Please enter a code you would want to decript: ")
            amountShift = int(input("Please enter the amount of shift: "))
            print("Your original code is ", decrytion(userMessage,amountShift,alList))
    
            #Continuation of Program
            print()
            userCont = input("Would you like to use the program again: y/n ")
            if userCont == "y":
                loop = True
            else:
                loop = False


        elif userInput ==3:
            print("Thank you for using this program ")
            loop = False
    

def interface():
    """ Menu selection options """
                  
    print()
    print("Welcome to the Caesar Cipher program ")
    print()
    print("This program will encrypt and decipher your code ")
    print("1: Encrytion of message ")
    print("2: Decrytion of message ")
    print("3: Exit ")
    print()


def encrytion(uMessage,amtShift,refList):
    """ Function for encrytion of message """
                  
    #Create an empty list
    nMeList = []

    #Change string to list
    uMeInput = list(uMessage)

    #Loop for each elements in the list
    for letter in uMeInput:

        #Check index of userMessage from the referenceList
        orIndex = refList.index(letter)

        #Create a new index for userMessage
        nIndex = orIndex - amtShift

        #Assign new elements 
        nLetter = refList[nIndex]

        #Add new elements to empty list
        nMeList.append(nLetter)

    #Join elements in list to a string
    nMeList = "".join(nMeList)
        
    return nMeList
                  

def decrytion(uMessage,amtShift,refList):
    """ Function for decrytion of message """
                  
    #Create an empty list
    nMeList = []

    #Change string to list
    uMeInput = list(uMessage)

    #Loop for each elements in the lsit
    for letter in uMeInput:

        #Check index of userMessage from the referenceList
        orIndex = refList.index(letter)

        #Create a new index for userMessage
        nIndex = orIndex + amtShift

        #If elements is out of index
        if nIndex >= 25:
            overIndex = nIndex - 26
            #Assign new elements
            nLetter = refList[overIndex]
        else;
            #Assign new elements 
            nLetter = refList[nIndex]


        #Add new new elements to empty list
        nMeList.append(nLetter)

    #Join elements in list to a string
    nMeList = "".join(nMeList)
        
    return nMeList



#Invoke main()
main()


                
