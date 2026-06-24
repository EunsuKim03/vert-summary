; ModuleID = 'benchmark/c_transcoder/COUNT_DIGITS_FACTORIAL_SET_1/COUNT_DIGITS_FACTORIAL_SET_1_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_DIGITS_FACTORIAL_SET_1/COUNT_DIGITS_FACTORIAL_SET_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 2
  br i1 %4, label %17, label %9

5:                                                ; preds = %9
  %6 = tail call double @llvm.floor.f64(double %14)
  %7 = fadd double %6, 1.000000e+00
  %8 = fptosi double %7 to i32
  br label %17

9:                                                ; preds = %3, %9
  %10 = phi i32 [ %15, %9 ], [ 2, %3 ]
  %11 = phi double [ %14, %9 ], [ 0.000000e+00, %3 ]
  %12 = sitofp i32 %10 to double
  %13 = tail call double @log10(double noundef %12) #3
  %14 = fadd double %11, %13
  %15 = add nuw i32 %10, 1
  %16 = icmp eq i32 %10, %0
  br i1 %16, label %5, label %9, !llvm.loop !5

17:                                               ; preds = %3, %1, %5
  %18 = phi i32 [ %8, %5 ], [ 0, %1 ], [ 1, %3 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @log10(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

attributes #0 = { nofree nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
