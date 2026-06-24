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
  br i1 %10, label %11, label %37

11:                                               ; preds = %4
  %12 = icmp slt i32 %3, 0
  %13 = zext i32 %1 to i64
  %14 = zext i32 %6 to i64
  br label %15

15:                                               ; preds = %11, %102
  %16 = phi i64 [ 0, %11 ], [ %103, %102 ]
  br i1 %12, label %102, label %17

17:                                               ; preds = %15
  %18 = icmp eq i64 %16, 0
  %19 = getelementptr inbounds i32, i32* %0, i64 %16
  %20 = add nsw i64 %16, -1
  %21 = mul nsw i64 %20, %7
  %22 = getelementptr inbounds i32, i32* %9, i64 %21
  %23 = mul nuw nsw i64 %16, %7
  %24 = getelementptr inbounds i32, i32* %9, i64 %23
  %25 = add nsw i64 %16, -1
  %26 = mul nsw i64 %25, %7
  %27 = getelementptr inbounds i32, i32* %9, i64 %26
  %28 = mul nuw nsw i64 %16, %7
  %29 = getelementptr inbounds i32, i32* %9, i64 %28
  %30 = mul nuw nsw i64 %16, %7
  %31 = getelementptr inbounds i32, i32* %9, i64 %30
  %32 = add nsw i64 %16, -1
  %33 = mul nsw i64 %32, %7
  %34 = getelementptr inbounds i32, i32* %9, i64 %33
  %35 = mul nuw nsw i64 %16, %7
  %36 = getelementptr inbounds i32, i32* %9, i64 %35
  br label %45

37:                                               ; preds = %102, %4
  %38 = add nsw i32 %1, -1
  %39 = sext i32 %38 to i64
  %40 = mul nsw i64 %7, %39
  %41 = getelementptr inbounds i32, i32* %9, i64 %40
  %42 = icmp sgt i32 %3, -1
  br i1 %42, label %43, label %115

43:                                               ; preds = %37
  %44 = sext i32 %3 to i64
  br label %105

45:                                               ; preds = %17, %99
  %46 = phi i64 [ 0, %17 ], [ %100, %99 ]
  br i1 %18, label %47, label %59

47:                                               ; preds = %45
  %48 = load i32, i32* %0, align 4, !tbaa !5
  %49 = sub nsw i32 %2, %48
  %50 = zext i32 %49 to i64
  %51 = icmp eq i64 %46, %50
  %52 = add nsw i32 %48, %2
  %53 = zext i32 %52 to i64
  %54 = icmp eq i64 %46, %53
  %55 = select i1 %51, i1 true, i1 %54
  %56 = getelementptr inbounds i32, i32* %9, i64 %46
  br i1 %55, label %57, label %58

57:                                               ; preds = %47
  store i32 1, i32* %56, align 4, !tbaa !5
  br label %99

58:                                               ; preds = %47
  store i32 0, i32* %56, align 4, !tbaa !5
  br label %99

59:                                               ; preds = %45
  %60 = load i32, i32* %19, align 4, !tbaa !5
  %61 = trunc i64 %46 to i32
  %62 = sub nsw i32 %61, %60
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %64, label %88

64:                                               ; preds = %59
  %65 = trunc i64 %46 to i32
  %66 = add nsw i32 %60, %65
  %67 = icmp sgt i32 %66, %3
  br i1 %67, label %82, label %68

68:                                               ; preds = %64
  %69 = sext i32 %62 to i64
  %70 = getelementptr inbounds i32, i32* %22, i64 %69
  %71 = load i32, i32* %70, align 4, !tbaa !5
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = sext i32 %66 to i64
  %75 = getelementptr inbounds i32, i32* %22, i64 %74
  %76 = load i32, i32* %75, align 4, !tbaa !5
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %73, %68
  %79 = phi i1 [ true, %68 ], [ %77, %73 ]
  %80 = zext i1 %79 to i32
  %81 = getelementptr inbounds i32, i32* %24, i64 %46
  store i32 %80, i32* %81, align 4, !tbaa !5
  br label %99

82:                                               ; preds = %64
  br i1 %63, label %83, label %88

83:                                               ; preds = %82
  %84 = sext i32 %62 to i64
  %85 = getelementptr inbounds i32, i32* %34, i64 %84
  %86 = load i32, i32* %85, align 4, !tbaa !5
  %87 = getelementptr inbounds i32, i32* %36, i64 %46
  store i32 %86, i32* %87, align 4, !tbaa !5
  br label %99

88:                                               ; preds = %59, %82
  %89 = trunc i64 %46 to i32
  %90 = add nsw i32 %60, %89
  %91 = icmp sgt i32 %90, %3
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = sext i32 %90 to i64
  %94 = getelementptr inbounds i32, i32* %27, i64 %93
  %95 = load i32, i32* %94, align 4, !tbaa !5
  %96 = getelementptr inbounds i32, i32* %29, i64 %46
  store i32 %95, i32* %96, align 4, !tbaa !5
  br label %99

97:                                               ; preds = %88
  %98 = getelementptr inbounds i32, i32* %31, i64 %46
  store i32 0, i32* %98, align 4, !tbaa !5
  br label %99

99:                                               ; preds = %58, %57, %83, %97, %92, %78
  %100 = add nuw nsw i64 %46, 1
  %101 = icmp eq i64 %100, %14
  br i1 %101, label %102, label %45, !llvm.loop !9

102:                                              ; preds = %99, %15
  %103 = add nuw nsw i64 %16, 1
  %104 = icmp eq i64 %103, %13
  br i1 %104, label %37, label %15, !llvm.loop !12

105:                                              ; preds = %43, %110
  %106 = phi i64 [ %44, %43 ], [ %111, %110 ]
  %107 = getelementptr inbounds i32, i32* %41, i64 %106
  %108 = load i32, i32* %107, align 4, !tbaa !5
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = add nsw i64 %106, -1
  %112 = icmp sgt i64 %106, 0
  br i1 %112, label %105, label %115, !llvm.loop !13

113:                                              ; preds = %105
  %114 = trunc i64 %106 to i32
  br label %115

115:                                              ; preds = %113, %110, %37
  %116 = phi i32 [ -1, %37 ], [ %114, %113 ], [ -1, %110 ]
  ret i32 %116
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
