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
int f_gold ( int arr [ ], int dep [ ], int n ) {
  sort ( arr, arr + n );
  sort ( dep, dep + n );
  int plat_needed = 1, result = 1;
  int i = 1, j = 0;
  while ( i < n && j < n ) {
    if ( arr [ i ] <= dep [ j ] ) {
      plat_needed ++;
      i ++;
      if ( plat_needed > result ) result = plat_needed;
    }
    else {
      plat_needed --;
      j ++;
    }
  }
  return result;
}


