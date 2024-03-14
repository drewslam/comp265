#include <iostream>

using namespace std;

int power(int base, int exp) {
    if (exp == 0) {
        return 1;
    } else {
        return base * power(base, exp - 1); 
    }
}

int binaryToDecimal(int* byte, int bits) {
    int decimal = 0;
    int exp = 0;
    for (int i = bits - 1; i >= 0; i--) {
        decimal += ((*(byte + i) == 1) ? (power(2, exp)) : (0));
        exp++;
    }

    return decimal;
}



string decimalToBinary(int dec) {
    string binary;
    int hold = dec;
    int back;
    int byteSize = 0;
    while (hold != 0) {
        if (hold % 2 == 0) {
            binary += '0';
        } else {
            binary += '1';
        }
        hold /= 2;
        byteSize++;
    }

    back = binary.size() - 1;
    for (int i = 0; i < binary.size() / 2; i++) {
        back -= i;
        int temp = binary[back];
        binary[back] = binary[i];
        binary[i] = temp;
    }

    return binary;
}

int main() {
    /*int MAX_BITS;

    cout << "Input the number of bits in your string: ";
    cin >> MAX_BITS;

    int* byte = new int[MAX_BITS];
    
    cout << "Input each bit one at a time (0 1 0 0 1 ...)" << endl;
    for (int i = 0; i < MAX_BITS; i++) {
        cin >> *(byte + i);
    }

    cout << "You input: ";
    for (int i = 0; i < MAX_BITS; i++) {
        cout << *(byte + i);
    }
    cout << endl;

    cout << "Decimal: " << binaryToDecimal(byte, MAX_BITS) << endl;

    delete[] byte;
    */
    int dec;
    cout << "Please enter a decimal number: ";
    cin >> dec;

    cout << "You entered: " << dec << endl;
    cout << "In binary: " << decimalToBinary(dec) << endl;

    return 0;
}
