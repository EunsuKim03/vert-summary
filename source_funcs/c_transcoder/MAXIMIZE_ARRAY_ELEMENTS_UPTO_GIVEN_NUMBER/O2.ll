; ModuleID = 'benchmark/c_transcoder/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER/MAXIMIZE_ARRAY_ELEMENTS_UPTO_GIVEN_NUMBER_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = zext i32 %1 to i64
  %6 = add i32 %3, 1
  %7 = zext i32 %6 to i64
  %8 = mul nuw i64 %7, %5
  %9 = alloca i32, i64 %8, align 16
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %4
  %12 = icmp slt i32 %3, 0
  br label %13

13:                                               ; preds = %11, %78
  %14 = phi i64 [ 0, %11 ], [ %79, %78 ]
  br i1 %12, label %78, label %15

15:                                               ; preds = %13
  %16 = icmp eq i64 %14, 0
  %17 = getelementptr inbounds i32, i32* %0, i64 %14
  %18 = add nsw i64 %14, -1
  %19 = mul nsw i64 %18, %7
  %20 = getelementptr inbounds i32, i32* %9, i64 %19
  %21 = mul nuw nsw i64 %14, %7
  %22 = getelementptr inbounds i32, i32* %9, i64 %21
  br label %29

23:                                               ; preds = %78, %4
  %24 = add nsw i32 %1, -1
  %25 = sext i32 %24 to i64
  %26 = mul nsw i64 %7, %25
  %27 = getelementptr inbounds i32, i32* %9, i64 %26
  %28 = icmp sgt i32 %3, -1
  br i1 %28, label %81, label %90

29:                                               ; preds = %15, %75
  %30 = phi i64 [ 0, %15 ], [ %76, %75 ]
  br i1 %16, label %31, label %43

31:                                               ; preds = %29
  %32 = load i32, i32* %0, align 4, !tbaa !5
  %33 = sub nsw i32 %2, %32
  %34 = zext i32 %33 to i64
  %35 = icmp eq i64 %30, %34
  %36 = add nsw i32 %32, %2
  %37 = zext i32 %36 to i64
  %38 = icmp eq i64 %30, %37
  %39 = select i1 %35, i1 true, i1 %38
  %40 = getelementptr inbounds i32, i32* %9, i64 %30
  br i1 %39, label %41, label %42

41:                                               ; preds = %31
  store i32 1, i32* %40, align 4, !tbaa !5
  br label %75

42:                                               ; preds = %31
  store i32 0, i32* %40, align 4, !tbaa !5
  br label %75

43:                                               ; preds = %29
  %44 = load i32, i32* %17, align 4, !tbaa !5
  %45 = trunc i64 %30 to i32
  %46 = sub nsw i32 %45, %44
  %47 = icmp sgt i32 %46, -1
  %48 = add nsw i32 %44, %45
  %49 = icmp sgt i32 %48, %3
  br i1 %47, label %50, label %67

50:                                               ; preds = %43
  %51 = zext i32 %46 to i64
  %52 = getelementptr inbounds i32, i32* %20, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !5
  br i1 %49, label %65, label %54

54:                                               ; preds = %50
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  %57 = sext i32 %48 to i64
  %58 = getelementptr inbounds i32, i32* %20, i64 %57
  %59 = load i32, i32* %58, align 4, !tbaa !5
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %56, %54
  %62 = phi i1 [ true, %54 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  %64 = getelementptr inbounds i32, i32* %22, i64 %30
  store i32 %63, i32* %64, align 4, !tbaa !5
  br label %75

65:                                               ; preds = %50
  %66 = getelementptr inbounds i32, i32* %22, i64 %30
  store i32 %53, i32* %66, align 4, !tbaa !5
  br label %75

67:                                               ; preds = %43
  br i1 %49, label %73, label %68

68:                                               ; preds = %67
  %69 = sext i32 %48 to i64
  %70 = getelementptr inbounds i32, i32* %20, i64 %69
  %71 = load i32, i32* %70, align 4, !tbaa !5
  %72 = getelementptr inbounds i32, i32* %22, i64 %30
  store i32 %71, i32* %72, align 4, !tbaa !5
  br label %75

73:                                               ; preds = %67
  %74 = getelementptr inbounds i32, i32* %22, i64 %30
  store i32 0, i32* %74, align 4, !tbaa !5
  br label %75

75:                                               ; preds = %42, %41, %65, %73, %68, %61
  %76 = add nuw nsw i64 %30, 1
  %77 = icmp eq i64 %76, %7
  br i1 %77, label %78, label %29, !llvm.loop !9

78:                                               ; preds = %75, %13
  %79 = add nuw nsw i64 %14, 1
  %80 = icmp eq i64 %79, %5
  br i1 %80, label %23, label %13, !llvm.loop !11

81:                                               ; preds = %23, %87
  %82 = phi i32 [ %88, %87 ], [ %3, %23 ]
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %27, i64 %83
  %85 = load i32, i32* %84, align 4, !tbaa !5
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = add nsw i32 %82, -1
  %89 = icmp sgt i32 %82, 0
  br i1 %89, label %81, label %90, !llvm.loop !12

90:                                               ; preds = %81, %87, %23
  %91 = phi i32 [ -1, %23 ], [ -1, %87 ], [ %82, %81 ]
  ret i32 %91
}

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
