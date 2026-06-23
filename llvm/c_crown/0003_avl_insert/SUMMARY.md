# c_crown/0003_avl_insert

- Source: `insert_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: comparisons, control flow, recursion, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, external declarations
- Evidence:
  - comparisons: `%7 = icmp eq %struct.node* %6, null`
  - control flow: `ret %struct.node* %13`
  - recursion: `insert calls itself`
  - memory/pointer: `define dso_local %struct.node* @newNode(i32 noundef %0) #0 {`
  - casts/conversions: `%5 = bitcast i8* %4 to %struct.node*`
  - calls/intrinsics: `%4 = call noalias i8* @malloc(i64 noundef 24) #2`
  - aggregates: `%struct.node = type { i32, %struct.node*, %struct.node* }`
  - UB-related: `define dso_local %struct.node* @newNode(i32 noundef %0) #0 {`
  - external declarations: `declare noalias i8* @malloc(i64 noundef) #1`

## O1

- Status: ok
- Features: comparisons, control flow, recursion, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, external declarations
- Evidence:
  - comparisons: `%3 = icmp eq %struct.node* %0, null`
  - control flow: `ret %struct.node* %3`
  - recursion: `insert calls itself`
  - memory/pointer: `define dso_local noalias %struct.node* @newNode(i32 noundef %0) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = bitcast i8* %2 to %struct.node*`
  - calls/intrinsics: `%2 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #4`
  - aggregates: `%struct.node = type { i32, %struct.node*, %struct.node* }`
  - UB-related: `define dso_local noalias %struct.node* @newNode(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1`

## O2

- Status: ok
- Features: comparisons, control flow, loop, recursion, memory/pointer, casts/conversions, calls/intrinsics, aggregates, UB-related, external declarations
- Evidence:
  - comparisons: `%3 = icmp eq %struct.node* %0, null`
  - control flow: `ret %struct.node* %3`
  - loop: `br label %14`
  - recursion: `insert calls itself`
  - memory/pointer: `define dso_local noalias %struct.node* @newNode(i32 noundef %0) local_unnamed_addr #0 {`
  - casts/conversions: `%3 = bitcast i8* %2 to %struct.node*`
  - calls/intrinsics: `%2 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #4`
  - aggregates: `%struct.node = type { i32, %struct.node*, %struct.node* }`
  - UB-related: `define dso_local noalias %struct.node* @newNode(i32 noundef %0) local_unnamed_addr #0 {`
  - external declarations: `declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #1`
