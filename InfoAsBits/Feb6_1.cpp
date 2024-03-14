#include <iostream>
using namespace std;

// Find the 2's complement for an 8-bit array

int* converter(int arr[], int size) {
    int* res = new int[size];
    for (int i = 0; i < size; i++) {
        if (arr[i] == 1) {
            res[i] = 0;
        } else {
            res[i] = 1;
        }
    }

    for (int i = size - 1; i > 0; i++) {
        if (res[i] == 1) {
            res[i] = 0;
            res[i - 1] += 1;
        } else if (res[i] == 0) {
            res[i] = 1;
            break;
        }
    }
    return res;
}

int main() {
    int userByte[8];

    for (int i = 0; i < 8; i++) {
        cin >> userByte[i];
    }

    for (int i = 0; i < 8; i++) {
        cout << userByte[i];
    }
    cout << endl;

    int* result = new int[8];
    result = converter(userByte, 8);

    for (int i = 0; i < 8; i++) {
        cout << result[i];
    }
    cout << endl;

    delete[] result;

    return 0;
}
