; ModuleID = 'benchmark/c_transcoder/K_TH_DIGIT_RAISED_POWER_B/K_TH_DIGIT_RAISED_POWER_B_processed.c'
source_filename = "benchmark/c_transcoder/K_TH_DIGIT_RAISED_POWER_B/K_TH_DIGIT_RAISED_POWER_B_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sitofp i32 %0 to double
  %5 = sitofp i32 %1 to double
  %6 = call double @pow(double noundef %4, double noundef %5) #2
  %7 = fptosi double %6 to i32
  br label %8

8:                                                ; preds = %22, %3
  %9 = phi i32 [ %7, %3 ], [ %23, %22 ]
  %10 = phi i32 [ 0, %3 ], [ %16, %22 ]
  %11 = phi i32 [ undef, %3 ], [ %24, %22 ]
  %12 = icmp sgt i32 %9, 0
  %13 = icmp slt i32 %10, %2
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  %16 = add nuw nsw i32 %10, 1
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = srem i32 %9, 10
  br label %22

20:                                               ; preds = %15
  %21 = sdiv i32 %9, 10
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %9, %18 ], [ %21, %20 ]
  %24 = phi i32 [ %19, %18 ], [ %11, %20 ]
  br i1 %17, label %25, label %8, !llvm.loop !5

25:                                               ; preds = %8, %22
  %26 = phi i32 [ %24, %22 ], [ 0, %8 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @pow(double noundef, double noundef) local_unnamed_addr #1

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
