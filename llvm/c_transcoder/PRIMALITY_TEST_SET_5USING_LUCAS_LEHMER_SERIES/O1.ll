; ModuleID = 'benchmark/c_transcoder/PRIMALITY_TEST_SET_5USING_LUCAS_LEHMER_SERIES/PRIMALITY_TEST_SET_5USING_LUCAS_LEHMER_SERIES_processed.c'
source_filename = "benchmark/c_transcoder/PRIMALITY_TEST_SET_5USING_LUCAS_LEHMER_SERIES/PRIMALITY_TEST_SET_5USING_LUCAS_LEHMER_SERIES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = call double @ldexp(double 1.000000e+00, i32 %0) #2
  %3 = fadd double %2, -1.000000e+00
  %4 = fptosi double %3 to i64
  %5 = add i32 %0, -1
  %6 = srem i64 4, %4
  %7 = icmp sgt i32 %0, 2
  br i1 %7, label %12, label %8

8:                                                ; preds = %12, %1
  %9 = phi i64 [ %6, %1 ], [ %18, %12 ]
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  ret i32 %11

12:                                               ; preds = %1, %12
  %13 = phi i64 [ %18, %12 ], [ %6, %1 ]
  %14 = phi i32 [ %17, %12 ], [ 1, %1 ]
  %15 = mul nsw i64 %13, %13
  %16 = add nsw i64 %15, -2
  %17 = add nuw nsw i32 %14, 1
  %18 = srem i64 %16, %4
  %19 = icmp eq i32 %17, %5
  br i1 %19, label %8, label %12, !llvm.loop !5
}

; Function Attrs: nofree willreturn
declare double @ldexp(double, i32 signext) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree willreturn }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
