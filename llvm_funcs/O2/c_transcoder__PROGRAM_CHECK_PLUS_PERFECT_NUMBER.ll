; ModuleID = 'benchmark/c_transcoder/PROGRAM_CHECK_PLUS_PERFECT_NUMBER/PROGRAM_CHECK_PLUS_PERFECT_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/PROGRAM_CHECK_PLUS_PERFECT_NUMBER/PROGRAM_CHECK_PLUS_PERFECT_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %24, label %5

3:                                                ; preds = %5
  %4 = sitofp i32 %9 to double
  br i1 %2, label %24, label %12

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %9, %5 ], [ 0, %1 ]
  %7 = phi i32 [ %8, %5 ], [ %0, %1 ]
  %8 = sdiv i32 %7, 10
  %9 = add nuw nsw i32 %6, 1
  %10 = add i32 %7, 9
  %11 = icmp ult i32 %10, 19
  br i1 %11, label %3, label %5, !llvm.loop !5

12:                                               ; preds = %3, %12
  %13 = phi i32 [ %20, %12 ], [ 0, %3 ]
  %14 = phi i32 [ %21, %12 ], [ %0, %3 ]
  %15 = srem i32 %14, 10
  %16 = sitofp i32 %15 to double
  %17 = tail call double @pow(double noundef %16, double noundef %4) #2
  %18 = sitofp i32 %13 to double
  %19 = fadd double %17, %18
  %20 = fptosi double %19 to i32
  %21 = sdiv i32 %14, 10
  %22 = add i32 %14, 9
  %23 = icmp ult i32 %22, 19
  br i1 %23, label %24, label %12, !llvm.loop !7

24:                                               ; preds = %12, %1, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %1 ], [ %20, %12 ]
  %26 = icmp eq i32 %25, %0
  %27 = zext i1 %26 to i32
  ret i32 %27
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
