; ModuleID = 'benchmark/c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_processed.c'
source_filename = "benchmark/c_transcoder/SUM_SERIES_23_45_67_89_UPTO_N_TERMS/SUM_SERIES_23_45_67_89_UPTO_N_TERMS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local float @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %41

3:                                                ; preds = %1
  %4 = and i32 %0, 1
  %5 = icmp eq i32 %0, 1
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  %7 = and i32 %0, -2
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi double [ 0.000000e+00, %6 ], [ %23, %8 ]
  %10 = phi i32 [ 1, %6 ], [ %20, %8 ]
  %11 = phi i32 [ 0, %6 ], [ %24, %8 ]
  %12 = add nuw nsw i32 %10, 1
  %13 = sitofp i32 %12 to double
  %14 = add nuw nsw i32 %10, 2
  %15 = sitofp i32 %14 to double
  %16 = fdiv double %13, %15
  %17 = fadd double %9, %16
  %18 = add nuw nsw i32 %10, 3
  %19 = sitofp i32 %18 to double
  %20 = add nuw nsw i32 %10, 4
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %19, %21
  %23 = fsub double %17, %22
  %24 = add i32 %11, 2
  %25 = icmp eq i32 %24, %7
  br i1 %25, label %26, label %8, !llvm.loop !5

26:                                               ; preds = %8, %3
  %27 = phi double [ undef, %3 ], [ %23, %8 ]
  %28 = phi double [ 0.000000e+00, %3 ], [ %23, %8 ]
  %29 = phi i32 [ 1, %3 ], [ %20, %8 ]
  %30 = icmp eq i32 %4, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = add nuw nsw i32 %29, 1
  %33 = sitofp i32 %32 to double
  %34 = add nuw nsw i32 %29, 2
  %35 = sitofp i32 %34 to double
  %36 = fdiv double %33, %35
  %37 = fadd double %28, %36
  br label %38

38:                                               ; preds = %26, %31
  %39 = phi double [ %27, %26 ], [ %37, %31 ]
  %40 = fptrunc double %39 to float
  br label %41

41:                                               ; preds = %38, %1
  %42 = phi float [ 0.000000e+00, %1 ], [ %40, %38 ]
  ret float %42
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
