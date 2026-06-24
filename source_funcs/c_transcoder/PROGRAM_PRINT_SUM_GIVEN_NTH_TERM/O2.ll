; ModuleID = 'benchmark/c_transcoder/PROGRAM_PRINT_SUM_GIVEN_NTH_TERM/PROGRAM_PRINT_SUM_GIVEN_NTH_TERM_processed.c'
source_filename = "benchmark/c_transcoder/PROGRAM_PRINT_SUM_GIVEN_NTH_TERM/PROGRAM_PRINT_SUM_GIVEN_NTH_TERM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i64 %0, 1
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = add nuw nsw i64 %0, 1
  %5 = trunc i64 %4 to i32
  %6 = mul i32 %5, 3
  %7 = trunc i64 %4 to i33
  %8 = add i33 %7, -2
  %9 = add i33 %7, -3
  %10 = mul i33 %8, %9
  %11 = trunc i33 %10 to i32
  %12 = and i32 %11, -2
  %13 = add i32 %6, %12
  %14 = add i32 %13, -5
  br label %15

15:                                               ; preds = %3, %1
  %16 = phi i32 [ 0, %1 ], [ %14, %3 ]
  ret i32 %16
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
