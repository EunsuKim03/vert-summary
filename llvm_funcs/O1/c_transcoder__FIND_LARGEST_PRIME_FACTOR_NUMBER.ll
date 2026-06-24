; ModuleID = 'benchmark/c_transcoder/FIND_LARGEST_PRIME_FACTOR_NUMBER/FIND_LARGEST_PRIME_FACTOR_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/FIND_LARGEST_PRIME_FACTOR_NUMBER/FIND_LARGEST_PRIME_FACTOR_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local i64 @f_gold(i64 noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ %0, %1 ], [ %7, %2 ]
  %4 = phi i64 [ -1, %1 ], [ 2, %2 ]
  %5 = and i64 %3, 1
  %6 = icmp eq i64 %5, 0
  %7 = ashr i64 %3, 1
  br i1 %6, label %2, label %8, !llvm.loop !5

8:                                                ; preds = %2
  %9 = sitofp i64 %3 to double
  %10 = call double @sqrt(double noundef %9) #2
  %11 = fcmp ult double %10, 3.000000e+00
  br i1 %11, label %18, label %12

12:                                               ; preds = %8, %28
  %13 = phi i64 [ %31, %28 ], [ 3, %8 ]
  %14 = phi i64 [ %30, %28 ], [ %4, %8 ]
  %15 = phi i64 [ %29, %28 ], [ %3, %8 ]
  %16 = srem i64 %15, %13
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %23, label %28

18:                                               ; preds = %28, %8
  %19 = phi i64 [ %3, %8 ], [ %29, %28 ]
  %20 = phi i64 [ %4, %8 ], [ %30, %28 ]
  %21 = icmp sgt i64 %19, 2
  %22 = select i1 %21, i64 %19, i64 %20
  ret i64 %22

23:                                               ; preds = %12, %23
  %24 = phi i64 [ %25, %23 ], [ %15, %12 ]
  %25 = sdiv i64 %24, %13
  %26 = srem i64 %25, %13
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %23, label %28, !llvm.loop !8

28:                                               ; preds = %23, %12
  %29 = phi i64 [ %15, %12 ], [ %25, %23 ]
  %30 = phi i64 [ %14, %12 ], [ %13, %23 ]
  %31 = add nuw i64 %13, 2
  %32 = trunc i64 %31 to i32
  %33 = sitofp i32 %32 to double
  %34 = sitofp i64 %29 to double
  %35 = call double @sqrt(double noundef %34) #2
  %36 = fcmp ult double %35, %33
  br i1 %36, label %18, label %12, !llvm.loop !9
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
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
!9 = distinct !{!9, !6, !7}
