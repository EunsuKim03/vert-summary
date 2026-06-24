; ModuleID = 'benchmark/c_transcoder/PROGRAM_CHECK_PLUS_PERFECT_NUMBER/PROGRAM_CHECK_PLUS_PERFECT_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/PROGRAM_CHECK_PLUS_PERFECT_NUMBER/PROGRAM_CHECK_PLUS_PERFECT_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %5, label %8

3:                                                ; preds = %8
  %4 = sitofp i32 %12 to double
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi double [ 0.000000e+00, %1 ], [ %4, %3 ]
  %7 = icmp eq i32 %0, 0
  br i1 %7, label %27, label %15

8:                                                ; preds = %1, %8
  %9 = phi i32 [ %12, %8 ], [ 0, %1 ]
  %10 = phi i32 [ %11, %8 ], [ %0, %1 ]
  %11 = sdiv i32 %10, 10
  %12 = add nuw nsw i32 %9, 1
  %13 = add i32 %10, 9
  %14 = icmp ult i32 %13, 19
  br i1 %14, label %3, label %8, !llvm.loop !5

15:                                               ; preds = %5, %15
  %16 = phi i32 [ %23, %15 ], [ 0, %5 ]
  %17 = phi i32 [ %24, %15 ], [ %0, %5 ]
  %18 = srem i32 %17, 10
  %19 = sitofp i32 %18 to double
  %20 = call double @pow(double noundef %19, double noundef %6) #2
  %21 = sitofp i32 %16 to double
  %22 = fadd double %20, %21
  %23 = fptosi double %22 to i32
  %24 = sdiv i32 %17, 10
  %25 = add i32 %17, 9
  %26 = icmp ult i32 %25, 19
  br i1 %26, label %27, label %15, !llvm.loop !8

27:                                               ; preds = %15, %5
  %28 = phi i32 [ 0, %5 ], [ %23, %15 ]
  %29 = icmp eq i32 %28, %0
  %30 = zext i1 %29 to i32
  ret i32 %30
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
!8 = distinct !{!8, !6, !7}
