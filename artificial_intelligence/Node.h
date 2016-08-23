class Node {
    

  public:
  	int data;
    Node* next;
    Node() {};
    void SetData(int aData) { data = aData; };
    void SetNext(Node* aNext) { next = aNext; };
    int Data() { return data; };
    Node* Next() { return next; };
};
