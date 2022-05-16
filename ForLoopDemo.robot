
*** Test Cases ***
# Forloop1
#     FOR     ${i}    IN RANGE    1   10
#           log to console    ${i}
#     END
# Forloop2
#     FOR     ${i}    IN  1 2 3 4 5  6 7 8 9    #single space and double space
#             log to console    ${i}
#     END        
# Forloop3WithList
#         @{items}    create list     1   2   3   4   5
#         FOR     ${i}    IN  @{items}
#         log to console   ${i}
#         END
# Forloop4
#         FOR  ${i}    IN  join     bestha sihari  venky   sriram     #single space and double space
#         log to console  ${i}
#         END
# Forloop5
#         ${nameslist}  create list    bestha srihari  venky  sriram
#         FOR     ${i}    IN  @{nameslist}
#         log to console  ${i}
#         END
Forloop6EithExit
        @{items}    create list     1  2  3  4  5 
        FOR     ${i}    IN      @{items}
        log to console      ${i}
        exit for loop if    ${i}==3
        END

