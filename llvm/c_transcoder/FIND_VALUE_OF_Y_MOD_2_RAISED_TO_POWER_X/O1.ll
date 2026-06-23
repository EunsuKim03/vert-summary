; ModuleID = 'benchmark/c_transcoder/FIND_VALUE_OF_Y_MOD_2_RAISED_TO_POWER_X/FIND_VALUE_OF_Y_MOD_2_RAISED_TO_POWER_X_processed.c'
source_filename = "benchmark/c_transcoder/FIND_VALUE_OF_Y_MOD_2_RAISED_TO_POWER_X/FIND_VALUE_OF_Y_MOD_2_RAISED_TO_POWER_X_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nounwind uwtable willreturn writeonly
define dso_local i32 @f_gold(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = sitofp i64 %0 to double
  %4 = call double @log2(double noundef %3) #2
  %5 = sitofp i64 %1 to double
  %6 = fcmp olt double %4, %5
  %7 = icmp sgt i64 %1, 63
  %8 = or i1 %7, %6
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = trunc i64 %1 to i32
  %11 = shl i32 1, %10
  %12 = sext i32 %11 to i64
  %13 = srem i64 %0, %12
  br label %14

14:                                               ; preds = %2, %9
  %15 = phi i64 [ %13, %9 ], [ %0, %2 ]
  %16 = trunc i64 %15 to i32
  ret i32 %16
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @log2(double noundef) local_unnamed_addr #1

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
