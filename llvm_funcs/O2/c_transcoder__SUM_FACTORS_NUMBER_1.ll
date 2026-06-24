; ModuleID = 'benchmark/c_transcoder/SUM_FACTORS_NUMBER_1/SUM_FACTORS_NUMBER_1_processed.c'
source_filename = "benchmark/c_transcoder/SUM_FACTORS_NUMBER_1/SUM_FACTORS_NUMBER_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sitofp i32 %0 to double
  %3 = tail call double @sqrt(double noundef %2) #2
  %4 = fcmp ult double %3, 2.000000e+00
  br i1 %4, label %11, label %5

5:                                                ; preds = %1, %27
  %6 = phi i32 [ %31, %27 ], [ 2, %1 ]
  %7 = phi i32 [ %30, %27 ], [ 1, %1 ]
  %8 = phi i32 [ %28, %27 ], [ %0, %1 ]
  %9 = srem i32 %8, %6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %27

11:                                               ; preds = %27, %1
  %12 = phi i32 [ %0, %1 ], [ %28, %27 ]
  %13 = phi i32 [ 1, %1 ], [ %30, %27 ]
  %14 = icmp sgt i32 %12, 1
  %15 = add nsw i32 %12, 1
  %16 = select i1 %14, i32 %15, i32 1
  %17 = mul nsw i32 %16, %13
  ret i32 %17

18:                                               ; preds = %5, %18
  %19 = phi i32 [ %23, %18 ], [ 1, %5 ]
  %20 = phi i32 [ %24, %18 ], [ 1, %5 ]
  %21 = phi i32 [ %22, %18 ], [ %8, %5 ]
  %22 = sdiv i32 %21, %6
  %23 = mul nsw i32 %19, %6
  %24 = add nuw nsw i32 %23, %20
  %25 = srem i32 %22, %6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %18, label %27, !llvm.loop !5

27:                                               ; preds = %18, %5
  %28 = phi i32 [ %8, %5 ], [ %22, %18 ]
  %29 = phi i32 [ 1, %5 ], [ %24, %18 ]
  %30 = mul nsw i32 %29, %7
  %31 = add nuw nsw i32 %6, 1
  %32 = sitofp i32 %31 to double
  %33 = sitofp i32 %28 to double
  %34 = tail call double @sqrt(double noundef %33) #2
  %35 = fcmp ult double %34, %32
  br i1 %35, label %11, label %5, !llvm.loop !7
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
