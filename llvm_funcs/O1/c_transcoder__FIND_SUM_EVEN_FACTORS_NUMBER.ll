; ModuleID = 'benchmark/c_transcoder/FIND_SUM_EVEN_FACTORS_NUMBER/FIND_SUM_EVEN_FACTORS_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/FIND_SUM_EVEN_FACTORS_NUMBER/FIND_SUM_EVEN_FACTORS_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %46

4:                                                ; preds = %1
  %5 = sitofp i32 %0 to double
  %6 = call double @sqrt(double noundef %5) #2
  %7 = fcmp ult double %6, 2.000000e+00
  br i1 %7, label %16, label %8

8:                                                ; preds = %4, %37
  %9 = phi i32 [ %41, %37 ], [ 2, %4 ]
  %10 = phi i32 [ %40, %37 ], [ 1, %4 ]
  %11 = phi i32 [ %38, %37 ], [ %0, %4 ]
  %12 = srem i32 %11, %9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = icmp eq i32 %9, 2
  br label %23

16:                                               ; preds = %37, %4
  %17 = phi i32 [ %0, %4 ], [ %38, %37 ]
  %18 = phi i32 [ 1, %4 ], [ %40, %37 ]
  %19 = icmp sgt i32 %17, 1
  %20 = add nsw i32 %17, 1
  %21 = select i1 %19, i32 %20, i32 1
  %22 = mul nsw i32 %21, %18
  br label %46

23:                                               ; preds = %14, %23
  %24 = phi i32 [ 1, %14 ], [ %33, %23 ]
  %25 = phi i32 [ 1, %14 ], [ %34, %23 ]
  %26 = phi i32 [ 0, %14 ], [ %28, %23 ]
  %27 = phi i32 [ %11, %14 ], [ %29, %23 ]
  %28 = add nuw nsw i32 %26, 1
  %29 = sdiv i32 %27, %9
  %30 = icmp eq i32 %26, 0
  %31 = select i1 %15, i1 %30, i1 false
  %32 = select i1 %31, i32 0, i32 %25
  %33 = mul nsw i32 %24, %9
  %34 = add nsw i32 %32, %33
  %35 = srem i32 %29, %9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %23, label %37, !llvm.loop !5

37:                                               ; preds = %23, %8
  %38 = phi i32 [ %11, %8 ], [ %29, %23 ]
  %39 = phi i32 [ 1, %8 ], [ %34, %23 ]
  %40 = mul nsw i32 %39, %10
  %41 = add nuw nsw i32 %9, 1
  %42 = sitofp i32 %41 to double
  %43 = sitofp i32 %38 to double
  %44 = call double @sqrt(double noundef %43) #2
  %45 = fcmp ult double %44, %42
  br i1 %45, label %16, label %8, !llvm.loop !8

46:                                               ; preds = %1, %16
  %47 = phi i32 [ %22, %16 ], [ 0, %1 ]
  ret i32 %47
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
