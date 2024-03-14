#include <iostream>

using namespace std;

//practice: BINARY turn positive to negative and negative to positive

void binComplement(int arr[], int size) {
    int carry = 0;
    for(int i = 0; i < size; ++i) {
        if (arr[i] == 1) {
            arr[i] = 0;
        }
        else if (arr[i] == 0) {
            arr[i] = 1;
        }
    }
    arr[size - 1] += 1;
    if (arr[size - 1]) {
        for(int i = size - 1; i >= 0; --i) {
            if (carry == 1) {
                arr[i] += carry;
                carry = 0;
            }
            if (arr[i] > 1) {
                arr[i] -= 2;
                carry = 1;
            }
        }
    }
}


int main()
{
    int size = 8;
    int* arr = new int[size];
    
    for (int i = 0; i < size; ++i) {
        cout << "Enter one number for a total of 8: ";
        cin >> arr[i];
    }
    
    binComplement(arr, size);
    
    for (int i = 0; i < size; ++i) {
        cout << arr[i];
    }
    
    

    return 0;
}

