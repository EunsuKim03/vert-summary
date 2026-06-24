/* Auto-generated for LLVM emit: selected non-function raw definitions and standard headers needed by processed source. */
#include <algorithm>
#include <iostream>
#include <cstdlib>
#include <string>
#include <vector>
#include <fstream>
#include <iomanip>


#include <iostream>
#include <cstdlib>
#include <string>
#include <vector>
#include <fstream>
#include <iomanip>

using namespace std;
void f_gold ( int arr [ ], int n ) {
  for ( int i = 0;
  i < n;
  i ++ ) if ( arr [ i ] & 1 ) arr [ i ] *= - 1;
  sort ( arr, arr + n );
  for ( int i = 0;
  i < n;
  i ++ ) if ( arr [ i ] & 1 ) arr [ i ] *= - 1;
}


