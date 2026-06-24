; ModuleID = 'benchmark/c_transcoder/PRIMALITY_TEST_SET_5USING_LUCAS_LEHMER_SERIES/PRIMALITY_TEST_SET_5USING_LUCAS_LEHMER_SERIES_processed.c'
source_filename = "benchmark/c_transcoder/PRIMALITY_TEST_SET_5USING_LUCAS_LEHMER_SERIES/PRIMALITY_TEST_SET_5USING_LUCAS_LEHMER_SERIES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call double @ldexp(double 1.000000e+00, i32 %0) #2
  %3 = fadd double %2, -1.000000e+00
  %4 = fptosi double %3 to i64
  %5 = srem i64 4, %4
  %6 = icmp sgt i32 %0, 2
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = and i32 %0, 1
  %9 = icmp eq i32 %0, 3
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = add i32 %0, -2
  %12 = and i32 %11, -2
  br label %25

13:                                               ; preds = %25, %7
  %14 = phi i64 [ undef, %7 ], [ %33, %25 ]
  %15 = phi i64 [ %5, %7 ], [ %33, %25 ]
  %16 = icmp eq i32 %8, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = mul nsw i64 %15, %15
  %19 = add nsw i64 %18, -2
  %20 = srem i64 %19, %4
  br label %21

21:                                               ; preds = %17, %13, %1
  %22 = phi i64 [ %5, %1 ], [ %14, %13 ], [ %20, %17 ]
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  ret i32 %24

25:                                               ; preds = %25, %10
  %26 = phi i64 [ %5, %10 ], [ %33, %25 ]
  %27 = phi i32 [ 0, %10 ], [ %34, %25 ]
  %28 = mul nsw i64 %26, %26
  %29 = add nsw i64 %28, -2
  %30 = srem i64 %29, %4
  %31 = mul nsw i64 %30, %30
  %32 = add nsw i64 %31, -2
  %33 = srem i64 %32, %4
  %34 = add i32 %27, 2
  %35 = icmp eq i32 %34, %12
  br i1 %35, label %13, label %25, !llvm.loop !5
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
