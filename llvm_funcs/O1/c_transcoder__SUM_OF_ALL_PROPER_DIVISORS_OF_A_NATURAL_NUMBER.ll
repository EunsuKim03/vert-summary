; ModuleID = 'benchmark/c_transcoder/SUM_OF_ALL_PROPER_DIVISORS_OF_A_NATURAL_NUMBER/SUM_OF_ALL_PROPER_DIVISORS_OF_A_NATURAL_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/SUM_OF_ALL_PROPER_DIVISORS_OF_A_NATURAL_NUMBER/SUM_OF_ALL_PROPER_DIVISORS_OF_A_NATURAL_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sitofp i32 %0 to double
  %3 = call double @sqrt(double noundef %2) #2
  %4 = fcmp ult double %3, 2.000000e+00
  br i1 %4, label %5, label %8

5:                                                ; preds = %8, %1
  %6 = phi i32 [ 0, %1 ], [ %18, %8 ]
  %7 = add nsw i32 %6, 1
  ret i32 %7

8:                                                ; preds = %1, %8
  %9 = phi i32 [ %19, %8 ], [ 2, %1 ]
  %10 = phi i32 [ %18, %8 ], [ 0, %1 ]
  %11 = srem i32 %0, %9
  %12 = sdiv i32 %0, %9
  %13 = icmp eq i32 %11, 0
  %14 = icmp eq i32 %9, %12
  %15 = add i32 %9, %10
  %16 = select i1 %14, i32 0, i32 %12
  %17 = add i32 %15, %16
  %18 = select i1 %13, i32 %17, i32 %10
  %19 = add nuw nsw i32 %9, 1
  %20 = sitofp i32 %19 to double
  %21 = call double @sqrt(double noundef %2) #2
  %22 = fcmp ult double %21, %20
  br i1 %22, label %5, label %8, !llvm.loop !5
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
