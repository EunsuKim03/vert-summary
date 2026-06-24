; ModuleID = 'benchmark/c_transcoder/FIND_SUM_ODD_FACTORS_NUMBER/FIND_SUM_ODD_FACTORS_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/FIND_SUM_ODD_FACTORS_NUMBER/FIND_SUM_ODD_FACTORS_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %9, %1
  %5 = phi i32 [ %0, %1 ], [ %11, %9 ]
  %6 = sitofp i32 %5 to double
  %7 = call double @sqrt(double noundef %6) #2
  %8 = fcmp ult double %7, 3.000000e+00
  br i1 %8, label %20, label %14

9:                                                ; preds = %1, %9
  %10 = phi i32 [ %11, %9 ], [ %0, %1 ]
  %11 = sdiv i32 %10, 2
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %9, label %4, !llvm.loop !5

14:                                               ; preds = %4, %36
  %15 = phi i32 [ %40, %36 ], [ 3, %4 ]
  %16 = phi i32 [ %39, %36 ], [ 1, %4 ]
  %17 = phi i32 [ %37, %36 ], [ %5, %4 ]
  %18 = srem i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %36

20:                                               ; preds = %36, %4
  %21 = phi i32 [ %5, %4 ], [ %37, %36 ]
  %22 = phi i32 [ 1, %4 ], [ %39, %36 ]
  %23 = icmp sgt i32 %21, 1
  %24 = add nsw i32 %21, 1
  %25 = select i1 %23, i32 %24, i32 1
  %26 = mul nsw i32 %25, %22
  ret i32 %26

27:                                               ; preds = %14, %27
  %28 = phi i32 [ %32, %27 ], [ 1, %14 ]
  %29 = phi i32 [ %33, %27 ], [ 1, %14 ]
  %30 = phi i32 [ %31, %27 ], [ %17, %14 ]
  %31 = sdiv i32 %30, %15
  %32 = mul nsw i32 %28, %15
  %33 = add nuw nsw i32 %32, %29
  %34 = srem i32 %31, %15
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %27, label %36, !llvm.loop !8

36:                                               ; preds = %27, %14
  %37 = phi i32 [ %17, %14 ], [ %31, %27 ]
  %38 = phi i32 [ 1, %14 ], [ %33, %27 ]
  %39 = mul nsw i32 %38, %16
  %40 = add nuw nsw i32 %15, 1
  %41 = sitofp i32 %40 to double
  %42 = sitofp i32 %37 to double
  %43 = call double @sqrt(double noundef %42) #2
  %44 = fcmp ult double %43, %41
  br i1 %44, label %20, label %14, !llvm.loop !9
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
!9 = distinct !{!9, !6, !7}
