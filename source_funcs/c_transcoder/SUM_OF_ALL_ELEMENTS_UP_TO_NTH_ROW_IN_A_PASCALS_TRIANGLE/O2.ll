; ModuleID = 'benchmark/c_transcoder/SUM_OF_ALL_ELEMENTS_UP_TO_NTH_ROW_IN_A_PASCALS_TRIANGLE/SUM_OF_ALL_ELEMENTS_UP_TO_NTH_ROW_IN_A_PASCALS_TRIANGLE_processed.c'
source_filename = "benchmark/c_transcoder/SUM_OF_ALL_ELEMENTS_UP_TO_NTH_ROW_IN_A_PASCALS_TRIANGLE/SUM_OF_ALL_ELEMENTS_UP_TO_NTH_ROW_IN_A_PASCALS_TRIANGLE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %27

3:                                                ; preds = %1
  %4 = add i32 %0, -1
  %5 = and i32 %0, 7
  %6 = icmp ult i32 %4, 7
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = and i32 %0, -8
  br label %29

9:                                                ; preds = %29, %3
  %10 = phi i64 [ undef, %3 ], [ %63, %29 ]
  %11 = phi i32 [ 0, %3 ], [ %64, %29 ]
  %12 = phi i64 [ 0, %3 ], [ %63, %29 ]
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %9, %14
  %15 = phi i32 [ %21, %14 ], [ %11, %9 ]
  %16 = phi i64 [ %20, %14 ], [ %12, %9 ]
  %17 = phi i32 [ %22, %14 ], [ 0, %9 ]
  %18 = shl nuw i32 1, %15
  %19 = zext i32 %18 to i64
  %20 = add i64 %16, %19
  %21 = add nuw nsw i32 %15, 1
  %22 = add i32 %17, 1
  %23 = icmp eq i32 %22, %5
  br i1 %23, label %24, label %14, !llvm.loop !5

24:                                               ; preds = %14, %9
  %25 = phi i64 [ %10, %9 ], [ %20, %14 ]
  %26 = trunc i64 %25 to i32
  br label %27

27:                                               ; preds = %24, %1
  %28 = phi i32 [ 0, %1 ], [ %26, %24 ]
  ret i32 %28

29:                                               ; preds = %29, %7
  %30 = phi i32 [ 0, %7 ], [ %64, %29 ]
  %31 = phi i64 [ 0, %7 ], [ %63, %29 ]
  %32 = phi i32 [ 0, %7 ], [ %65, %29 ]
  %33 = shl nuw i32 1, %30
  %34 = zext i32 %33 to i64
  %35 = add i64 %31, %34
  %36 = or i32 %30, 1
  %37 = shl nuw i32 1, %36
  %38 = zext i32 %37 to i64
  %39 = add i64 %35, %38
  %40 = or i32 %30, 2
  %41 = shl nuw i32 1, %40
  %42 = zext i32 %41 to i64
  %43 = add i64 %39, %42
  %44 = or i32 %30, 3
  %45 = shl nuw i32 1, %44
  %46 = zext i32 %45 to i64
  %47 = add i64 %43, %46
  %48 = or i32 %30, 4
  %49 = shl nuw i32 1, %48
  %50 = zext i32 %49 to i64
  %51 = add i64 %47, %50
  %52 = or i32 %30, 5
  %53 = shl nuw i32 1, %52
  %54 = zext i32 %53 to i64
  %55 = add i64 %51, %54
  %56 = or i32 %30, 6
  %57 = shl nuw i32 1, %56
  %58 = zext i32 %57 to i64
  %59 = add i64 %55, %58
  %60 = or i32 %30, 7
  %61 = shl nuw i32 1, %60
  %62 = zext i32 %61 to i64
  %63 = add i64 %59, %62
  %64 = add nuw nsw i32 %30, 8
  %65 = add i32 %32, 8
  %66 = icmp eq i32 %65, %8
  br i1 %66, label %9, label %29, !llvm.loop !7
}

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
