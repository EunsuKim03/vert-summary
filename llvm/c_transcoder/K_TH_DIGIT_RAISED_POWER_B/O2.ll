; ModuleID = 'benchmark/c_transcoder/K_TH_DIGIT_RAISED_POWER_B/K_TH_DIGIT_RAISED_POWER_B_processed.c'
source_filename = "benchmark/c_transcoder/K_TH_DIGIT_RAISED_POWER_B/K_TH_DIGIT_RAISED_POWER_B_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sitofp i32 %0 to double
  %5 = sitofp i32 %1 to double
  %6 = tail call double @pow(double noundef %4, double noundef %5) #2
  %7 = fptosi double %6 to i32
  %8 = icmp sgt i32 %7, 0
  %9 = icmp sgt i32 %2, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %3, %18
  %12 = phi i32 [ %14, %18 ], [ 0, %3 ]
  %13 = phi i32 [ %19, %18 ], [ %7, %3 ]
  %14 = add nuw nsw i32 %12, 1
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = urem i32 %13, 10
  br label %23

18:                                               ; preds = %11
  %19 = udiv i32 %13, 10
  %20 = icmp ugt i32 %13, 9
  %21 = icmp slt i32 %14, %2
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %11, label %23

23:                                               ; preds = %18, %3, %16
  %24 = phi i32 [ %17, %16 ], [ 0, %3 ], [ 0, %18 ]
  ret i32 %24
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
