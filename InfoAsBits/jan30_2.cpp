// write a program to add two 8 bit binary values.  
// your program must pass the 8-bit binary values to a 
//   function and return a new 8 bit array and also provide 
//   a means to identify an overflow.  
//   If an overflow, state overflow in main, 
//   if no overflow, display the sum
// assume the result will be stored in an 8-bit register
#include <iostream>

using namespace std;

char* binaryAddition(char byte_1[], char byte_2[], int bits) {
    char* result = nullptr;
    int j = 0;
    for (int i = 0; i < bits; i++) {
                
        }
    }

    return result;
}

int main() {
    const int MAX_BITS = 8;
    char byte_1[MAX_BITS];
    char byte_2[MAX_BITS];
    char* res = nullptr;

    for (int i = 0; i < MAX_BITS; i++) {
        cin >> byte_1[i];
    }

    for (int i = 0; i < MAX_BITS; i++) {
        cin >> byte_2[i];
    }

    return 0;
}
