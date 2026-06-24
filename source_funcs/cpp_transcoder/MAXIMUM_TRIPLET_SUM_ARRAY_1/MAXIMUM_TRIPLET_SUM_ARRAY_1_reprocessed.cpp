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
int f_gold ( int arr [ ], int n ) {
  sort ( arr, arr + n );
  return arr [ n - 1 ] + arr [ n - 2 ] + arr [ n - 3 ];
}


