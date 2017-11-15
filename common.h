#include<string>
#include<vector>
#include "stdarg.h"
using namespace std;

const int MaxBranchNum = 26;

class Node{
public:
	string nodetype;
	string nodeName;
	string note;
	vector<Node*> children;
public:
	Node(string type = "", string name = "", string not = "");

};


struct Id
{
	int type;
	string name;
	//int address;
};

struct Struct
{
	int type;
	string name;
	//int address;
};

struct Function
{
	int type;
	string name;
	//int address;
};

struct Class
{
	int type;
	string name;
	//int address;
};

struct type{
	int integer;
	float fl;
	double db;
	char ch;
	string str;
	Node* ptr;
};

#define YYSTYPE type

extern vector<Struct> struct_list;
extern vector<Id> id_list;
extern vector<Function> function_list;
extern vector<Class> class_list;

void addChildren(int, ...);
void printTree(Node *p, int count);