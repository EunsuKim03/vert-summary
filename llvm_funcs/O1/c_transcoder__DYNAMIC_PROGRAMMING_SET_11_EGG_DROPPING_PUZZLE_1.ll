; ModuleID = 'benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SET_11_EGG_DROPPING_PUZZLE_1/DYNAMIC_PROGRAMMING_SET_11_EGG_DROPPING_PUZZLE_1_processed.c'
source_filename = "benchmark/c_transcoder/DYNAMIC_PROGRAMMING_SET_11_EGG_DROPPING_PUZZLE_1/DYNAMIC_PROGRAMMING_SET_11_EGG_DROPPING_PUZZLE_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add nsw i32 %0, 1
  %4 = zext i32 %3 to i64
  %5 = add i32 %1, 1
  %6 = zext i32 %5 to i64
  %7 = mul nuw i64 %6, %4
  %8 = alloca i32, i64 %7, align 16
  %9 = icmp slt i32 %0, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = add i32 %0, 1
  %12 = zext i32 %11 to i64
  br label %18

13:                                               ; preds = %18, %2
  %14 = icmp slt i32 %1, 1
  br i1 %14, label %25, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds i32, i32* %8, i64 %6
  %17 = zext i32 %5 to i64
  br label %32

18:                                               ; preds = %10, %18
  %19 = phi i64 [ 1, %10 ], [ %23, %18 ]
  %20 = mul nuw nsw i64 %19, %6
  %21 = getelementptr inbounds i32, i32* %8, i64 %20
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 1, i32* %22, align 4, !tbaa !5
  store i32 0, i32* %21, align 4, !tbaa !5
  %23 = add nuw nsw i64 %19, 1
  %24 = icmp eq i64 %23, %12
  br i1 %24, label %13, label %18, !llvm.loop !9

25:                                               ; preds = %32, %13
  %26 = icmp slt i32 %0, 2
  br i1 %26, label %72, label %27

27:                                               ; preds = %25
  %28 = icmp slt i32 %1, 2
  %29 = add i32 %0, 1
  %30 = zext i32 %29 to i64
  %31 = zext i32 %5 to i64
  br label %38

32:                                               ; preds = %15, %32
  %33 = phi i64 [ 1, %15 ], [ %36, %32 ]
  %34 = getelementptr inbounds i32, i32* %16, i64 %33
  %35 = trunc i64 %33 to i32
  store i32 %35, i32* %34, align 4, !tbaa !5
  %36 = add nuw nsw i64 %33, 1
  %37 = icmp eq i64 %36, %17
  br i1 %37, label %25, label %32, !llvm.loop !12

38:                                               ; preds = %27, %69
  %39 = phi i64 [ 2, %27 ], [ %70, %69 ]
  br i1 %28, label %69, label %40

40:                                               ; preds = %38
  %41 = mul nuw nsw i64 %39, %6
  %42 = getelementptr inbounds i32, i32* %8, i64 %41
  %43 = add nsw i64 %39, -1
  %44 = mul nuw nsw i64 %43, %6
  %45 = getelementptr inbounds i32, i32* %8, i64 %44
  br label %46

46:                                               ; preds = %40, %65
  %47 = phi i64 [ 2, %40 ], [ %66, %65 ]
  %48 = phi i64 [ 3, %40 ], [ %67, %65 ]
  %49 = getelementptr inbounds i32, i32* %42, i64 %47
  store i32 2147483647, i32* %49, align 4, !tbaa !5
  br label %50

50:                                               ; preds = %46, %50
  %51 = phi i64 [ 1, %46 ], [ %63, %50 ]
  %52 = add nsw i64 %51, -1
  %53 = getelementptr inbounds i32, i32* %45, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !5
  %55 = sub nsw i64 %47, %51
  %56 = getelementptr inbounds i32, i32* %42, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !5
  %58 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %54, i32 noundef %57) #2
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %49, align 4, !tbaa !5
  %61 = icmp slt i32 %59, %60
  %62 = select i1 %61, i32 %59, i32 %60
  store i32 %62, i32* %49, align 4
  %63 = add nuw nsw i64 %51, 1
  %64 = icmp eq i64 %63, %48
  br i1 %64, label %65, label %50, !llvm.loop !13

65:                                               ; preds = %50
  %66 = add nuw nsw i64 %47, 1
  %67 = add nuw nsw i64 %48, 1
  %68 = icmp eq i64 %66, %31
  br i1 %68, label %69, label %46, !llvm.loop !14

69:                                               ; preds = %65, %38
  %70 = add nuw nsw i64 %39, 1
  %71 = icmp eq i64 %70, %30
  br i1 %71, label %72, label %38, !llvm.loop !15

72:                                               ; preds = %69, %25
  %73 = sext i32 %0 to i64
  %74 = mul nsw i64 %6, %73
  %75 = getelementptr inbounds i32, i32* %8, i64 %74
  %76 = sext i32 %1 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4, !tbaa !5
  ret i32 %78
}

declare i32 @max(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
