; ModuleID = 'benchmark/c_transcoder/NUMBER_UNIQUE_RECTANGLES_FORMED_USING_N_UNIT_SQUARES/NUMBER_UNIQUE_RECTANGLES_FORMED_USING_N_UNIT_SQUARES_processed.c'
source_filename = "benchmark/c_transcoder/NUMBER_UNIQUE_RECTANGLES_FORMED_USING_N_UNIT_SQUARES/NUMBER_UNIQUE_RECTANGLES_FORMED_USING_N_UNIT_SQUARES_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sitofp i32 %0 to double
  %3 = tail call double @sqrt(double noundef %2) #2
  %4 = fcmp ult double %3, 1.000000e+00
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %12
  %6 = phi i32 [ %14, %12 ], [ 1, %1 ]
  %7 = phi i32 [ %13, %12 ], [ 0, %1 ]
  %8 = mul nsw i32 %6, %6
  %9 = icmp sgt i32 %8, %0
  br i1 %9, label %12, label %18

10:                                               ; preds = %12, %1
  %11 = phi i32 [ 0, %1 ], [ %13, %12 ]
  ret i32 %11

12:                                               ; preds = %18, %5
  %13 = phi i32 [ %7, %5 ], [ %21, %18 ]
  %14 = add nuw nsw i32 %6, 1
  %15 = sitofp i32 %14 to double
  %16 = tail call double @sqrt(double noundef %2) #2
  %17 = fcmp ult double %16, %15
  br i1 %17, label %10, label %5, !llvm.loop !5

18:                                               ; preds = %5, %18
  %19 = phi i32 [ %22, %18 ], [ %6, %5 ]
  %20 = phi i32 [ %21, %18 ], [ %7, %5 ]
  %21 = add nsw i32 %20, 1
  %22 = add nuw nsw i32 %19, 1
  %23 = mul nsw i32 %22, %6
  %24 = icmp sgt i32 %23, %0
  br i1 %24, label %12, label %18, !llvm.loop !7
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
