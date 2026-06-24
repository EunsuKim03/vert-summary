; ModuleID = 'benchmark/c_transcoder/RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM/RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM_processed.c'
source_filename = "benchmark/c_transcoder/RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM/RECURSIVELY_BREAK_NUMBER_3_PARTS_GET_MAXIMUM_SUM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %3, label %5

3:                                                ; preds = %1, %5
  %4 = phi i32 [ %14, %5 ], [ %0, %1 ]
  ret i32 %4

5:                                                ; preds = %1
  %6 = sdiv i32 %0, 2
  %7 = tail call i32 @f_gold(i32 noundef %6)
  %8 = sdiv i32 %0, 3
  %9 = tail call i32 @f_gold(i32 noundef %8)
  %10 = add nsw i32 %9, %7
  %11 = sdiv i32 %0, 4
  %12 = tail call i32 @f_gold(i32 noundef %11)
  %13 = add nsw i32 %10, %12
  %14 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %13, i32 noundef %0) #2
  br label %3
}

declare i32 @max(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
