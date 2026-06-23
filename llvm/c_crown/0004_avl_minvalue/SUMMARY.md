# c_crown/0004_avl_minvalue

- Source: `minvalue_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: comparisons, control flow, loop, memory/pointer, aggregates, UB-related
- Evidence:
  - comparisons: `%7 = icmp ne %struct.node* %6, null`
  - control flow: `br label %5`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local %struct.node* @minValueNode(%struct.node* noundef %0) #0 {`
  - aggregates: `%struct.node = type { i32, %struct.node*, %struct.node* }`
  - UB-related: `define dso_local %struct.node* @minValueNode(%struct.node* noundef %0) #0 {`

## O1

- Status: ok
- Features: comparisons, control flow, loop, memory/pointer, aggregates, UB-related
- Evidence:
  - comparisons: `%4 = icmp eq %struct.node* %3, null`
  - control flow: `br label %2`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local %struct.node* @minValueNode(%struct.node* noundef readonly %0) local_unnamed_addr #0 {`
  - aggregates: `%struct.node = type { i32, %struct.node*, %struct.node* }`
  - UB-related: `define dso_local %struct.node* @minValueNode(%struct.node* noundef readonly %0) local_unnamed_addr #0 {`

## O2

- Status: ok
- Features: comparisons, control flow, loop, memory/pointer, aggregates, UB-related
- Evidence:
  - comparisons: `%4 = icmp eq %struct.node* %3, null`
  - control flow: `br label %2`
  - loop: `llvm.loop metadata`
  - memory/pointer: `define dso_local %struct.node* @minValueNode(%struct.node* noundef readonly %0) local_unnamed_addr #0 {`
  - aggregates: `%struct.node = type { i32, %struct.node*, %struct.node* }`
  - UB-related: `define dso_local %struct.node* @minValueNode(%struct.node* noundef readonly %0) local_unnamed_addr #0 {`
