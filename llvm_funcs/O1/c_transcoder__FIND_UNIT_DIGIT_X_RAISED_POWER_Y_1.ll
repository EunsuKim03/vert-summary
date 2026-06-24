; ModuleID = 'benchmark/c_transcoder/FIND_UNIT_DIGIT_X_RAISED_POWER_Y_1/FIND_UNIT_DIGIT_X_RAISED_POWER_Y_1_processed.c'
source_filename = "benchmark/c_transcoder/FIND_UNIT_DIGIT_X_RAISED_POWER_Y_1/FIND_UNIT_DIGIT_X_RAISED_POWER_Y_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nounwind uwtable willreturn writeonly
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = srem i32 %1, 4
  %6 = add nsw i32 %5, 4
  %7 = sitofp i32 %6 to double
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi double [ %7, %4 ], [ 0.000000e+00, %2 ]
  %10 = srem i32 %0, 10
  %11 = sitofp i32 %10 to double
  %12 = call double @pow(double noundef %11, double noundef %9) #2
  %13 = fptosi double %12 to i32
  %14 = srem i32 %13, 10
  ret i32 %14
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @pow(double noundef, double noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
