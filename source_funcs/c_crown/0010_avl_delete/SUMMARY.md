# c_crown/0010_avl_delete

- Source: `delete_processed.c`
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
  - integer arithmetic: `%16 = sub nsw i32 %11, %15`
  - comparisons: `%5 = icmp eq %struct.Node* %4, null`
  - control flow: `br i1 %5, label %6, label %7`
  - recursion: `deleteNode calls itself`
  - memory/pointer: `define dso_local i32 @getBalance(%struct.Node* noundef %0) #0 {`
  - casts/conversions: `%11 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %10)`
  - calls/intrinsics: `%11 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %10)`
  - aggregates: `%struct.Node = type { i32, %struct.Node*, %struct.Node*, i32 }`
  - UB-related: `define dso_local i32 @getBalance(%struct.Node* noundef %0) #0 {`
  - external declarations: `declare i32 @height(...) #1`

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
  - integer arithmetic: `%10 = sub nsw i32 %6, %9`
  - comparisons: `%2 = icmp eq %struct.Node* %0, null`
  - control flow: `br i1 %2, label %11, label %3`
  - recursion: `deleteNode calls itself`
  - memory/pointer: `define dso_local i32 @getBalance(%struct.Node* noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %5) #3`
  - calls/intrinsics: `%6 = call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %5) #3`
  - aggregates: `%struct.Node = type { i32, %struct.Node*, %struct.Node*, i32 }`
  - UB-related: `define dso_local i32 @getBalance(%struct.Node* noundef readonly %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @height(...) local_unnamed_addr #1`

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
  - integer arithmetic: `%10 = sub nsw i32 %6, %9`
  - comparisons: `%2 = icmp eq %struct.Node* %0, null`
  - control flow: `br i1 %2, label %11, label %3`
  - recursion: `deleteNode calls itself`
  - memory/pointer: `define dso_local i32 @getBalance(%struct.Node* noundef readonly %0) local_unnamed_addr #0 {`
  - casts/conversions: `%6 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %5) #3`
  - calls/intrinsics: `%6 = tail call i32 (%struct.Node*, ...) bitcast (i32 (...)* @height to i32 (%struct.Node*, ...)*)(%struct.Node* noundef %5) #3`
  - aggregates: `%struct.Node = type { i32, %struct.Node*, %struct.Node*, i32 }`
  - UB-related: `define dso_local i32 @getBalance(%struct.Node* noundef readonly %0) local_unnamed_addr #0 {`
  - external declarations: `declare i32 @height(...) local_unnamed_addr #1`
