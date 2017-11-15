#include"ParserTree.h"
#include<iostream>

Node:: Node(string type , string name , string not ) {
	nodetype = type;
	nodeName = name;
	note = not;
	for (int i = 0; i < MaxBranchNum; i++) {
		children[i] = NULL;
	}
}


void addChildren(int count, ...) {
	if (count <= 1)
		return;
	va_list ptr;
	va_start(ptr, count);

	Node* father = va_arg(ptr, Node*);

	int index = father->children.size();
	for(int i = 0; i < count - 1 ; i++) {
		father->children.push_back(va_arg(ptr, Node*));
	}
	va_end(ptr);
	return;
}

void printTree(Node *p, int count) {
	for (int i = 0; i < count; i++) {
		cout << " ";
	}
	cout << p->nodetype << "   " << p->nodeName << "   " << p->note << endl;
	count += 4;
	for(int i = 0; i < p->children.size();i++) {
		printTree(p->children[i],count);
	}
}