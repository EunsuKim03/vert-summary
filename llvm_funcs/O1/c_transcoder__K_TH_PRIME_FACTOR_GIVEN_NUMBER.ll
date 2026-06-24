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
  %10 = call double @sqrt(double noundef %9) #2
  %11 = fcmp ult double %10, 3.000000e+00
  br i1 %11, label %40, label %16

12:                                               ; preds = %3
  %13 = add nsw i32 %5, -1
  %14 = sdiv i32 %4, 2
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %50, label %3, !llvm.loop !5

16:                                               ; preds = %8, %32
  %17 = phi i1 [ %39, %32 ], [ %11, %8 ]
  %18 = phi i32 [ %35, %32 ], [ 3, %8 ]
  %19 = phi i32 [ %34, %32 ], [ %5, %8 ]
  %20 = phi i32 [ %33, %32 ], [ %4, %8 ]
  %21 = srem i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %16, %27
  %24 = phi i32 [ %28, %27 ], [ %19, %16 ]
  %25 = phi i32 [ %29, %27 ], [ %20, %16 ]
  %26 = icmp eq i32 %24, 1
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = add nsw i32 %24, -1
  %29 = sdiv i32 %25, %18
  %30 = srem i32 %29, %18
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %23, label %32, !llvm.loop !8

32:                                               ; preds = %27, %16
  %33 = phi i32 [ %20, %16 ], [ %29, %27 ]
  %34 = phi i32 [ %19, %16 ], [ %28, %27 ]
  %35 = add nuw nsw i32 %18, 2
  %36 = sitofp i32 %35 to double
  %37 = sitofp i32 %33 to double
  %38 = call double @sqrt(double noundef %37) #2
  %39 = fcmp ult double %38, %36
  br i1 %39, label %40, label %16, !llvm.loop !9

40:                                               ; preds = %32, %23, %8
  %41 = phi i32 [ 3, %8 ], [ %18, %23 ], [ %35, %32 ]
  %42 = phi i1 [ %11, %8 ], [ %17, %23 ], [ %39, %32 ]
  %43 = phi i32 [ %4, %8 ], [ %25, %23 ], [ %33, %32 ]
  %44 = phi i32 [ %5, %8 ], [ 1, %23 ], [ %34, %32 ]
  br i1 %42, label %45, label %50

45:                                               ; preds = %40
  %46 = icmp sgt i32 %43, 2
  %47 = icmp eq i32 %44, 1
  %48 = select i1 %46, i1 %47, i1 false
  %49 = select i1 %48, i32 %43, i32 -1
  br label %50

50:                                               ; preds = %12, %45, %40
  %51 = phi i32 [ %41, %40 ], [ %49, %45 ], [ 2, %12 ]
  ret i32 %51
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
