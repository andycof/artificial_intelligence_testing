#include<iostream>
#include<cstdlib>
#include<string>
#include<cstdio>
#include"combination3.cpp"
using namespace std;
const int TABLE_SIZE = 300;
 
/*
 * HashNode Class Declaration
 */
class HashNode
{
    public:
       int key;
	int value;
	HashNode* next;
        HashNode(int key, int value)
        {
            this->key = key;
	    this->value = value;
	    this->next = NULL;
        }
};
 
/*
 * HashMap Class Declaration
 */
class HashMap
{
    private:
        HashNode** htable;
    public:
        HashMap()
        {
            htable = new HashNode*[TABLE_SIZE];
            for (int i = 0; i < TABLE_SIZE; i++)
                htable[i] = NULL;
        }
        ~HashMap()
        {
            for (int i = 0; i < TABLE_SIZE; ++i)
	    {
                HashNode* entry = htable[i];
                while (entry != NULL)
	        {
                    HashNode* prev = entry;
                    entry = entry->next;
                    delete prev;
                }
            }
            
        }
        /*
         * Hash Function
         */
        int HashFunc(int key)
        {
            return key % TABLE_SIZE;
        }
 
        /*
         * Insert Element at a key
         */
        void Insert(int key, int value)
        {
            int hash_val = HashFunc(key);
            HashNode* prev = NULL;
            HashNode* entry = htable[hash_val];
            while (entry != NULL)
            {
                prev = entry;
                entry = entry->next;
            }
            if (entry == NULL)
            {
                entry = new HashNode(key, value);
                if (prev == NULL)
	        {
                    htable[hash_val] = entry;
                }
	        else
	        {
                    prev->next = entry;
                }
            }
            else
            {
                entry->value = value;
            }
        }
       
        /*
         * Search Element at a key
         */
        int Search(int key)
        {
            bool flag = false;
            int hash_val = HashFunc(key);
            HashNode* entry = htable[hash_val];
            while (entry != NULL)
	    {
                if (entry->key == key)
	        {
                    cout<<entry->value<<" ";
                    flag = true;
                }
                entry = entry->next;
            }
            if (!flag)
                return -1;
        }
};

int main()
{
    HashMap hash;
    int key=0, value;
    int choice;
    while (1)
    {
        
       
        
            value=10;
            hash.Insert(key, value);
            key++;
           
    }
    return 0;
}
