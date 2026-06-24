# c_crown/0001_avl_rotate

- Source: `rotate_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%23 = add nsw i32 %22, 1`
  - comparisons: `%5 = icmp eq %struct.Node* %4, null`
  - control flow: `br i1 %5, label %6, label %7`
  - recursion: `insert calls itself`
  - memory/pointer: `define dso_local i32 @height(%struct.Node* noundef %0) #0 {`
  - casts/conversions: `%11 = call i32 (i32, ...) bitcast (i32 (...)* @newNode to i32 (i32, ...)*)(i32 noundef %10)`
  - calls/intrinsics: `%17 = call i32 @height(%struct.Node* noundef %16)`
  - aggregates: `%struct.Node = type { i32, %struct.Node*, %struct.Node*, i32 }`
  - UB-related: `define dso_local i32 @height(%struct.Node* noundef %0) #0 {`
  - external declarations: `declare i32 @max(i32 noundef, i32 noundef) #1`

## O1

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%21 = add nsw i32 %20, 1`
  - comparisons: `%2 = icmp eq %struct.Node* %0, null`
  - control flow: `br i1 %2, label %6, label %3`
  - recursion: `insert calls itself`
  - memory/pointer: `define dso_local i32 @height(%struct.Node* noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = call i32 (i32, ...) bitcast (i32 (...)* @newNode to i32 (i32, ...)*)(i32 noundef %1) #3`
  - calls/intrinsics: `%20 = call i32 @max(i32 noundef %11, i32 noundef %19) #3`
  - aggregates: `%struct.Node = type { i32, %struct.Node*, %struct.Node*, i32 }`
  - UB-related: `define dso_local i32 @height(%struct.Node* noundef readonly %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(i32 noundef, i32 noundef) local_unnamed_addr #2`

## O2

- Status: ok
- Features:
  - integer arithmetic
  - comparisons
  - control flow
  - recursion
  - memory/pointer
  - casts/conversions
  - calls/intrinsics
  - aggregates
  - UB-related
  - external declarations
- Evidence:
  - integer arithmetic: `%21 = add nsw i32 %20, 1`
  - comparisons: `%2 = icmp eq %struct.Node* %0, null`
  - control flow: `br i1 %2, label %6, label %3`
  - recursion: `insert calls itself`
  - memory/pointer: `define dso_local i32 @height(%struct.Node* noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%5 = tail call i32 (i32, ...) bitcast (i32 (...)* @newNode to i32 (i32, ...)*)(i32 noundef %1) #3`
  - calls/intrinsics: `%20 = tail call i32 @max(i32 noundef %11, i32 noundef %19) #3`
  - aggregates: `%struct.Node = type { i32, %struct.Node*, %struct.Node*, i32 }`
  - UB-related: `define dso_local i32 @height(%struct.Node* noundef readonly %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @max(i32 noundef, i32 noundef) local_unnamed_addr #2`
