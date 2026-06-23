; ModuleID = 'benchmark/c_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_2/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_2_processed.c'
source_filename = "benchmark/c_transcoder/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_2/N_TH_NUMBER_WHOSE_SUM_OF_DIGITS_IS_TEN_2_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nounwind uwtable willreturn writeonly
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = mul i32 %0, 9
  %3 = add i32 %2, 10
  %4 = sitofp i32 %3 to double
  %5 = tail call double @log10(double noundef %4) #2
  %6 = fptosi double %5 to i32
  %7 = mul i32 %6, 9
  %8 = add i32 %2, 1
  %9 = add i32 %8, %7
  ret i32 %9
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @log10(double noundef) local_unnamed_addr #1

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
