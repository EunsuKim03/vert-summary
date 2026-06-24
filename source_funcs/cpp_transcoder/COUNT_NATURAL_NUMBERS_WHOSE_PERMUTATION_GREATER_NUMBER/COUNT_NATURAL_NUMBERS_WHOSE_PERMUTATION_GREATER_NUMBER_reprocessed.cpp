/* Auto-generated for LLVM emit: selected non-function raw definitions and standard headers needed by processed source. */
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
int f_gold ( int n ) {
  int result = 0;
  for ( int i = 1;
  i <= 9;
  i ++ ) {
    stack < int > s;
    if ( i <= n ) {
      s . push ( i );
      result ++;
    }
    while ( ! s . empty ( ) ) {
      int tp = s . top ( );
      s . pop ( );
      for ( int j = tp % 10;
      j <= 9;
      j ++ ) {
        int x = tp * 10 + j;
        if ( x <= n ) {
          s . push ( x );
          result ++;
        }
      }
    }
  }
  return result;
}


