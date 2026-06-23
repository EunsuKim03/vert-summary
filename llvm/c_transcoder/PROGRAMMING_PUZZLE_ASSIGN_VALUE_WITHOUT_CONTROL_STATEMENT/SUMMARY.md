# c_transcoder/PROGRAMMING_PUZZLE_ASSIGN_VALUE_WITHOUT_CONTROL_STATEMENT

- Source: `PROGRAMMING_PUZZLE_ASSIGN_VALUE_WITHOUT_CONTROL_STATEMENT_processed.c`
- Source note: processed source

## O0

- Status: ok
- Features: control flow, memory/pointer, casts/conversions, UB-related
- Evidence:
  - control flow: `ret i32 %17`
  - memory/pointer: `%4 = alloca i32, align 4`
  - casts/conversions: `%8 = zext i1 %2 to i8`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {`

## O1

- Status: ok
- Features: control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - control flow: `ret i32 %10`
  - memory/pointer: `%4 = alloca [2 x i32], align 4`
  - casts/conversions: `%5 = bitcast [2 x i32]* %4 to i8*`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1`

## O2

- Status: ok
- Features: control flow, memory/pointer, casts/conversions, calls/intrinsics, UB-related, external declarations
- Evidence:
  - control flow: `ret i32 %10`
  - memory/pointer: `%4 = alloca [2 x i32], align 4`
  - casts/conversions: `%5 = bitcast [2 x i32]* %4 to i8*`
  - calls/intrinsics: `call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #2`
  - UB-related: `define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {`
  - external declarations: `declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1`
