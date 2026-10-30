#include <iostream>
// remember make files?
// I pull the std names in wholesale so I can write cout on its own.
// That is fine at this size, but I know it can clash with my own
// names in a bigger file, so I would not carry it into one.
using namespace std;
int main() {
  cout << "Hello World!\n";

// still my favourite loop syntax
  // I stop at i<10, so I get 0 through 9. That is ten lines, and
  // writing i<=10 would give me an eleventh I do not want.
  for (int i=0; i<10; i++){
    cout << "the variable i="<< i<< '\n';
  }
  // I leave out a return statement on purpose: main is the one
  // function that reports 0 on its own when it ends like this.
}
