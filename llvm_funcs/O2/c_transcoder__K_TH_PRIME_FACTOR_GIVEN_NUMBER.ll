; ModuleID = 'benchmark/c_transcoder/K_TH_PRIME_FACTOR_GIVEN_NUMBER/K_TH_PRIME_FACTOR_GIVEN_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/K_TH_PRIME_FACTOR_GIVEN_NUMBER/K_TH_PRIME_FACTOR_GIVEN_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  br label %3

3:                                                ; preds = %12, %2
  %4 = phi i32 [ %0, %2 ], [ %14, %12 ]
  %5 = phi i32 [ %1, %2 ], [ %13, %12 ]
  %6 = and i32 %4, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = sitofp i32 %4 to double
  %10 = tail call double @sqrt(double noundef %9) #2
  %11 = fcmp ult double %10, 3.000000e+00
  br i1 %11, label %39, label %16

12:                                               ; preds = %3
  %13 = add nsw i32 %5, -1
  %14 = sdiv i32 %4, 2
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %46, label %3, !llvm.loop !5

16:                                               ; preds = %8, %31
  %17 = phi i32 [ %34, %31 ], [ 3, %8 ]
  %18 = phi i32 [ %33, %31 ], [ %5, %8 ]
  %19 = phi i32 [ %32, %31 ], [ %4, %8 ]
  %20 = srem i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %16, %26
  %23 = phi i32 [ %27, %26 ], [ %18, %16 ]
  %24 = phi i32 [ %28, %26 ], [ %19, %16 ]
  %25 = icmp eq i32 %23, 1
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = add nsw i32 %23, -1
  %28 = sdiv i32 %24, %17
  %29 = srem i32 %28, %17
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %22, label %31, !llvm.loop !7

31:                                               ; preds = %26, %16
  %32 = phi i32 [ %19, %16 ], [ %28, %26 ]
  %33 = phi i32 [ %18, %16 ], [ %27, %26 ]
  %34 = add nuw nsw i32 %17, 2
  %35 = sitofp i32 %34 to double
  %36 = sitofp i32 %32 to double
  %37 = tail call double @sqrt(double noundef %36) #2
  %38 = fcmp ult double %37, %35
  br i1 %38, label %39, label %16, !llvm.loop !8

39:                                               ; preds = %31, %8
  %40 = phi i32 [ %4, %8 ], [ %32, %31 ]
  %41 = phi i32 [ %5, %8 ], [ %33, %31 ]
  %42 = icmp sgt i32 %40, 2
  %43 = icmp eq i32 %41, 1
  %44 = select i1 %42, i1 %43, i1 false
  %45 = select i1 %44, i32 %40, i32 -1
  br label %46

46:                                               ; preds = %12, %22, %39
  %47 = phi i32 [ %45, %39 ], [ %17, %22 ], [ 2, %12 ]
  ret i32 %47
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
