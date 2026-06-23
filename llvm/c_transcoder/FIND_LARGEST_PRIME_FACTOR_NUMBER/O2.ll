; ModuleID = 'benchmark/c_transcoder/FIND_LARGEST_PRIME_FACTOR_NUMBER/FIND_LARGEST_PRIME_FACTOR_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/FIND_LARGEST_PRIME_FACTOR_NUMBER/FIND_LARGEST_PRIME_FACTOR_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local i64 @f_gold(i64 noundef %0) local_unnamed_addr #0 {
  %2 = and i64 %0, 1
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1, %4
  %5 = phi i64 [ %6, %4 ], [ %0, %1 ]
  %6 = ashr i64 %5, 1
  %7 = and i64 %5, 2
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %4, label %9, !llvm.loop !5

9:                                                ; preds = %4, %1
  %10 = phi i64 [ %0, %1 ], [ %6, %4 ]
  %11 = phi i64 [ -1, %1 ], [ 2, %4 ]
  %12 = sitofp i64 %10 to double
  %13 = tail call double @sqrt(double noundef %12) #2
  %14 = fcmp ult double %13, 3.000000e+00
  br i1 %14, label %21, label %15

15:                                               ; preds = %9, %31
  %16 = phi i64 [ %34, %31 ], [ 3, %9 ]
  %17 = phi i64 [ %33, %31 ], [ %11, %9 ]
  %18 = phi i64 [ %32, %31 ], [ %10, %9 ]
  %19 = srem i64 %18, %16
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %26, label %31

21:                                               ; preds = %31, %9
  %22 = phi i64 [ %10, %9 ], [ %32, %31 ]
  %23 = phi i64 [ %11, %9 ], [ %33, %31 ]
  %24 = icmp sgt i64 %22, 2
  %25 = select i1 %24, i64 %22, i64 %23
  ret i64 %25

26:                                               ; preds = %15, %26
  %27 = phi i64 [ %28, %26 ], [ %18, %15 ]
  %28 = sdiv i64 %27, %16
  %29 = srem i64 %28, %16
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %26, label %31, !llvm.loop !8

31:                                               ; preds = %26, %15
  %32 = phi i64 [ %18, %15 ], [ %28, %26 ]
  %33 = phi i64 [ %17, %15 ], [ %16, %26 ]
  %34 = add nuw i64 %16, 2
  %35 = trunc i64 %34 to i32
  %36 = sitofp i32 %35 to double
  %37 = sitofp i64 %32 to double
  %38 = tail call double @sqrt(double noundef %37) #2
  %39 = fcmp ult double %38, %36
  br i1 %39, label %21, label %15, !llvm.loop !9
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #1

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
!7 = !{!"llvm.loop.peeled.count", i32 1}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
