
class List {
    Node *head;
  public:
    List() { head = NULL; };
    void Print();
    void Append(int data);
    void Delete(int data);
    int random();
    void sort();
};

