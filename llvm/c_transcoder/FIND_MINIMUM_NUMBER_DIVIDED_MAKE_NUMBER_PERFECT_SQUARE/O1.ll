; ModuleID = 'benchmark/c_transcoder/FIND_MINIMUM_NUMBER_DIVIDED_MAKE_NUMBER_PERFECT_SQUARE/FIND_MINIMUM_NUMBER_DIVIDED_MAKE_NUMBER_PERFECT_SQUARE_processed.c'
source_filename = "benchmark/c_transcoder/FIND_MINIMUM_NUMBER_DIVIDED_MAKE_NUMBER_PERFECT_SQUARE/FIND_MINIMUM_NUMBER_DIVIDED_MAKE_NUMBER_PERFECT_SQUARE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable writeonly
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 1
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1, %4
  %5 = phi i32 [ %7, %4 ], [ 0, %1 ]
  %6 = phi i32 [ %8, %4 ], [ %0, %1 ]
  %7 = add nuw nsw i32 %5, 1
  %8 = sdiv i32 %6, 2
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %4, label %11, !llvm.loop !5

11:                                               ; preds = %4
  %12 = and i32 %7, 1
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 1, i32 2
  br label %15

15:                                               ; preds = %11, %1
  %16 = phi i32 [ %0, %1 ], [ %8, %11 ]
  %17 = phi i32 [ 1, %1 ], [ %14, %11 ]
  %18 = sitofp i32 %16 to double
  %19 = call double @sqrt(double noundef %18) #2
  %20 = fcmp ult double %19, 3.000000e+00
  br i1 %20, label %27, label %21

21:                                               ; preds = %15, %40
  %22 = phi i32 [ %47, %40 ], [ 3, %15 ]
  %23 = phi i32 [ %46, %40 ], [ %17, %15 ]
  %24 = phi i32 [ %41, %40 ], [ %16, %15 ]
  %25 = srem i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %40

27:                                               ; preds = %40, %15
  %28 = phi i32 [ %16, %15 ], [ %41, %40 ]
  %29 = phi i32 [ %17, %15 ], [ %46, %40 ]
  %30 = icmp sgt i32 %28, 2
  %31 = select i1 %30, i32 %28, i32 1
  %32 = mul nsw i32 %31, %29
  ret i32 %32

33:                                               ; preds = %21, %33
  %34 = phi i32 [ %36, %33 ], [ 0, %21 ]
  %35 = phi i32 [ %37, %33 ], [ %24, %21 ]
  %36 = add nuw nsw i32 %34, 1
  %37 = sdiv i32 %35, %22
  %38 = srem i32 %37, %22
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %33, label %40, !llvm.loop !8

40:                                               ; preds = %33, %21
  %41 = phi i32 [ %24, %21 ], [ %37, %33 ]
  %42 = phi i32 [ 0, %21 ], [ %36, %33 ]
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 1, i32 %22
  %46 = mul nsw i32 %45, %23
  %47 = add nuw nsw i32 %22, 2
  %48 = sitofp i32 %47 to double
  %49 = sitofp i32 %41 to double
  %50 = call double @sqrt(double noundef %49) #2
  %51 = fcmp ult double %50, %48
  br i1 %51, label %27, label %21, !llvm.loop !9
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
