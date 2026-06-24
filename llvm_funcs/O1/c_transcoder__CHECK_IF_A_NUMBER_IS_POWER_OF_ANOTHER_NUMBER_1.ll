; ModuleID = 'benchmark/c_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_1/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_1_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_1/CHECK_IF_A_NUMBER_IS_POWER_OF_ANOTHER_NUMBER_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nounwind uwtable willreturn writeonly
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sitofp i32 %1 to double
  %4 = call double @log(double noundef %3) #2
  %5 = sitofp i32 %0 to double
  %6 = call double @log(double noundef %5) #2
  %7 = fdiv double %4, %6
  %8 = fptosi double %7 to i32
  %9 = call double @log(double noundef %3) #2
  %10 = call double @log(double noundef %5) #2
  %11 = fdiv double %9, %10
  %12 = sitofp i32 %8 to double
  %13 = fcmp oeq double %11, %12
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @log(double noundef) local_unnamed_addr #1

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
