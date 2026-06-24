; ModuleID = 'benchmark/c_transcoder/COUNT_DIGITS_FACTORIAL_SET_2/COUNT_DIGITS_FACTORIAL_SET_2_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_DIGITS_FACTORIAL_SET_2/COUNT_DIGITS_FACTORIAL_SET_2_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree nounwind uwtable willreturn writeonly
define dso_local i64 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 2
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = sitofp i32 %0 to double
  %7 = fdiv double %6, 0x4005BF0A8B145769
  %8 = tail call double @log10(double noundef %7) #3
  %9 = fmul double %6, 0x401921FB54442D18
  %10 = tail call double @log10(double noundef %9) #3
  %11 = fmul double %10, 5.000000e-01
  %12 = tail call double @llvm.fmuladd.f64(double %6, double %8, double %11)
  %13 = tail call double @llvm.floor.f64(double %12)
  %14 = fadd double %13, 1.000000e+00
  %15 = fptosi double %14 to i64
  br label %16

16:                                               ; preds = %3, %1, %5
  %17 = phi i64 [ %15, %5 ], [ 0, %1 ], [ 1, %3 ]
  ret i64 %17
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @log10(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

attributes #0 = { mustprogress nofree nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
