#include <stdio.h>
#include <iostream>

using namespace std;

void find_complement(int number[8], int result[8])
{
    
    for(int i = 0; i < 8; i++)
    {
        if(number[i] == 0)
        {
            result[i] = 1;
        }
        else
        {
            result[i] = 0;
        }
    }
    
    int carry_digit = 0;
    int one_binary[8] = {0, 0, 0, 0, 0, 0, 0, 1};
    
    
    for(int i = 7; i >= 0; i--)
    {
        result[i] = result[i] + one_binary[i] + carry_digit;

        
        if(result[i] == 3)
        {
            result[i] = 1;
            carry_digit = 1;
        }
        else if(result[i] == 2)
        {
            result[i] = 0;
            carry_digit = 1;
        }
        else if(result[i] == 1)
        {
            carry_digit = 0;
        }
        
    }
}


int main()
{
    int array [8] = {0, 1, 0, 0, 0, 0, 1, 0};
    int answer[8];
    
    find_complement(array, answer);
    

    for(int i = 0; i < 8; i++)
    {
        cout << answer[i];
    }

    return 0;
}


