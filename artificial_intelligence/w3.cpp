#include <iostream>
#include <stdlib.h>     
#include <time.h>
#include"Node.h"
#include"List.h"
//#include "random.h"
using namespace std;

List D1,D2,D3,D4,D5;

void List::sort()
{
    Node *ptr, *s;
    int value;
    if (head == NULL)
    {
        cout<<"The List is empty"<<endl;
        return;
    }
    ptr = head;
    while (ptr != NULL)
    {
        for (s = ptr->next;s !=NULL;s = s->next)
        {
            if (ptr->data > s->data)
            {
                value = ptr->data;
                ptr->data = s->data;
                s->data = value;
            }
        }
        ptr = ptr->next;
    }
}
int List::random()
{
int min=100,max=10000;
static bool first = true;
   if ( first ) 
   {  
      srand(time(NULL)); //seeding for the first time only!
      first = false;
   }
   return min + rand() % (max - min);
	
}
 
void List::Print() {

    // Temp pointer
    Node *tmp = head;

    // No nodes
    if ( tmp == NULL ) {
    cout << "EMPTY" << endl;
    return;
    }

    // One node in the list
    if ( tmp->Next() == NULL ) {
    cout << tmp->Data();
    cout << " --> ";
    cout << "NULL" << endl;
    }
    else {
    // Parse and print the list
    do {
        cout << tmp->Data();
        cout << ",";
        tmp = tmp->Next();
    }
    while ( tmp != NULL );

    cout << "NULL" << endl;
    }
}

/**
 * Append a node to the linked list
 */
void List::Append(int data) {

    // Create a new node
    Node* newNode = new Node();
    newNode->SetData(data);
    newNode->SetNext(NULL);

    // Create a temp pointer
    Node *tmp = head;

    if ( tmp != NULL ) {
    // Nodes already present in the list
    // Parse to end of list
    while ( tmp->Next() != NULL ) {
        tmp = tmp->Next();
    }

    // Point the last node to the new node
    tmp->SetNext(newNode);
    }
    else {
    // First node in the list
    head = newNode;
    }
}
int f1()
{
    // New list
   

    // Append nodes to the list
    for(int i=0;i<50;i++){
	    int a=D1.random();
	    D1.Append(a);}
	    D1.sort();
	    D1.Print();
	    cout << "\n\n\n";
    for(int i=0;i<50;i++){
	    int a=D2.random();
	    D2.Append(a);}
	    D2.sort();
	    D2.Print();
	    cout << "\n\n\n";
	for(int i=0;i<50;i++){
	    int a=D3.random();
	    D3.Append(a);}
	    D3.sort();
	    D3.Print();
	    cout << "\n\n\n";
	for(int i=0;i<50;i++){
	    int a=D4.random();
	    D4.Append(a);}
	    D4.sort();
	    D4.Print();
	    cout << "\n\n\n";
	for(int i=0;i<50;i++){
	    int a=D5.random();
	    D5.Append(a);}
	    D5.sort();
	    D5.Print();	
		cout << "\n\n\n";	    
    
return 0;
   
}

