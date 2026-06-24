/* Auto-generated for LLVM emit: selected non-function raw definitions and standard headers needed by processed source. */
#include <climits>
#include <stack>
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
int f_gold ( int pre [ ], int n ) {
  stack < int > s;
  int root = INT_MIN;
  for ( int i = 0;
  i < n;
  i ++ ) {
    if ( pre [ i ] < root ) return 0;
    while ( ! s . empty ( ) && s . top ( ) < pre [ i ] ) {
      root = s . top ( );
      s . pop ( );
    }
    s . push ( pre [ i ] );
  }
  return 1;
}


