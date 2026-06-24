; ModuleID = 'benchmark/c_transcoder/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE/COUNT_DISTINCT_OCCURRENCES_AS_A_SUBSEQUENCE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)
  %4 = trunc i64 %3 to i32
  %5 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %4, %6
  br i1 %7, label %164, label %8

8:                                                ; preds = %2
  %9 = add i64 %3, 1
  %10 = and i64 %9, 4294967295
  %11 = add i64 %5, 1
  %12 = and i64 %11, 4294967295
  %13 = tail call i8* @llvm.stacksave()
  %14 = mul nuw i64 %12, %10
  %15 = alloca i32, i64 %14, align 16
  %16 = icmp slt i32 %4, 1
  br i1 %16, label %37, label %17

17:                                               ; preds = %8
  %18 = add i64 %3, 1
  %19 = and i64 %18, 4294967295
  %20 = add nsw i64 %19, -1
  %21 = add nsw i64 %19, -2
  %22 = and i64 %20, 3
  %23 = icmp ult i64 %21, 3
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = and i64 %20, -4
  br label %58

26:                                               ; preds = %58, %17
  %27 = phi i64 [ 1, %17 ], [ %72, %58 ]
  %28 = icmp eq i64 %22, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %26, %29
  %30 = phi i64 [ %34, %29 ], [ %27, %26 ]
  %31 = phi i64 [ %35, %29 ], [ 0, %26 ]
  %32 = mul nuw nsw i64 %12, %30
  %33 = getelementptr inbounds i32, i32* %15, i64 %32
  store i32 0, i32* %33, align 4, !tbaa !5
  %34 = add nuw nsw i64 %30, 1
  %35 = add i64 %31, 1
  %36 = icmp eq i64 %35, %22
  br i1 %36, label %37, label %29, !llvm.loop !9

37:                                               ; preds = %26, %29, %8
  %38 = icmp slt i32 %6, 0
  br i1 %38, label %75, label %39

39:                                               ; preds = %37
  %40 = add i64 %5, 1
  %41 = and i64 %40, 4294967295
  %42 = icmp ult i64 %41, 8
  br i1 %42, label %56, label %43

43:                                               ; preds = %39
  %44 = and i64 %40, 7
  %45 = sub nsw i64 %41, %44
  br label %46

46:                                               ; preds = %46, %43
  %47 = phi i64 [ 0, %43 ], [ %52, %46 ]
  %48 = getelementptr inbounds i32, i32* %15, i64 %47
  %49 = bitcast i32* %48 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %49, align 16, !tbaa !5
  %50 = getelementptr inbounds i32, i32* %48, i64 4
  %51 = bitcast i32* %50 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %51, align 16, !tbaa !5
  %52 = add nuw i64 %47, 8
  %53 = icmp eq i64 %52, %45
  br i1 %53, label %54, label %46, !llvm.loop !11

54:                                               ; preds = %46
  %55 = icmp eq i64 %44, 0
  br i1 %55, label %75, label %56

56:                                               ; preds = %39, %54
  %57 = phi i64 [ 0, %39 ], [ %45, %54 ]
  br label %87

58:                                               ; preds = %58, %24
  %59 = phi i64 [ 1, %24 ], [ %72, %58 ]
  %60 = phi i64 [ 0, %24 ], [ %73, %58 ]
  %61 = mul nuw nsw i64 %12, %59
  %62 = getelementptr inbounds i32, i32* %15, i64 %61
  store i32 0, i32* %62, align 4, !tbaa !5
  %63 = add nuw nsw i64 %59, 1
  %64 = mul nuw nsw i64 %12, %63
  %65 = getelementptr inbounds i32, i32* %15, i64 %64
  store i32 0, i32* %65, align 4, !tbaa !5
  %66 = add nuw nsw i64 %59, 2
  %67 = mul nuw nsw i64 %12, %66
  %68 = getelementptr inbounds i32, i32* %15, i64 %67
  store i32 0, i32* %68, align 4, !tbaa !5
  %69 = add nuw nsw i64 %59, 3
  %70 = mul nuw nsw i64 %12, %69
  %71 = getelementptr inbounds i32, i32* %15, i64 %70
  store i32 0, i32* %71, align 4, !tbaa !5
  %72 = add nuw nsw i64 %59, 4
  %73 = add i64 %60, 4
  %74 = icmp eq i64 %73, %25
  br i1 %74, label %26, label %58, !llvm.loop !14

75:                                               ; preds = %87, %54, %37
  br i1 %16, label %107, label %76

76:                                               ; preds = %75
  %77 = icmp slt i32 %6, 1
  %78 = add i64 %5, 1
  %79 = add i64 %3, 1
  %80 = and i64 %79, 4294967295
  %81 = and i64 %78, 4294967295
  %82 = add nsw i64 %81, -1
  %83 = and i64 %82, 1
  %84 = icmp eq i64 %81, 2
  %85 = and i64 %82, -2
  %86 = icmp eq i64 %83, 0
  br label %92

87:                                               ; preds = %56, %87
  %88 = phi i64 [ %90, %87 ], [ %57, %56 ]
  %89 = getelementptr inbounds i32, i32* %15, i64 %88
  store i32 1, i32* %89, align 4, !tbaa !5
  %90 = add nuw nsw i64 %88, 1
  %91 = icmp eq i64 %90, %41
  br i1 %91, label %75, label %87, !llvm.loop !15

92:                                               ; preds = %76, %131
  %93 = phi i64 [ 0, %76 ], [ %134, %131 ]
  %94 = phi i64 [ 1, %76 ], [ %132, %131 ]
  br i1 %77, label %131, label %95

95:                                               ; preds = %92
  %96 = mul i64 %81, %93
  %97 = add i64 %81, %96
  %98 = getelementptr i32, i32* %15, i64 %97
  %99 = add nsw i64 %94, -1
  %100 = getelementptr inbounds i8, i8* %1, i64 %99
  %101 = load i8, i8* %100, align 1, !tbaa !17
  %102 = mul nuw nsw i64 %12, %94
  %103 = getelementptr inbounds i32, i32* %15, i64 %102
  %104 = mul nuw nsw i64 %12, %99
  %105 = getelementptr inbounds i32, i32* %15, i64 %104
  %106 = load i32, i32* %98, align 4
  br i1 %84, label %116, label %135

107:                                              ; preds = %131, %75
  %108 = shl i64 %3, 32
  %109 = ashr exact i64 %108, 32
  %110 = mul nsw i64 %12, %109
  %111 = getelementptr inbounds i32, i32* %15, i64 %110
  %112 = shl i64 %5, 32
  %113 = ashr exact i64 %112, 32
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4, !tbaa !5
  tail call void @llvm.stackrestore(i8* %13)
  br label %164

116:                                              ; preds = %158, %95
  %117 = phi i32 [ %106, %95 ], [ %159, %158 ]
  %118 = phi i64 [ 1, %95 ], [ %161, %158 ]
  br i1 %86, label %131, label %119

119:                                              ; preds = %116
  %120 = add nsw i64 %118, -1
  %121 = getelementptr inbounds i8, i8* %0, i64 %120
  %122 = load i8, i8* %121, align 1, !tbaa !17
  %123 = icmp eq i8 %101, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = getelementptr inbounds i32, i32* %105, i64 %120
  %126 = load i32, i32* %125, align 4, !tbaa !5
  %127 = add nsw i32 %126, %117
  br label %128

128:                                              ; preds = %124, %119
  %129 = phi i32 [ %127, %124 ], [ %117, %119 ]
  %130 = getelementptr inbounds i32, i32* %103, i64 %118
  store i32 %129, i32* %130, align 4, !tbaa !5
  br label %131

131:                                              ; preds = %128, %116, %92
  %132 = add nuw nsw i64 %94, 1
  %133 = icmp eq i64 %132, %80
  %134 = add i64 %93, 1
  br i1 %133, label %107, label %92, !llvm.loop !18

135:                                              ; preds = %95, %158
  %136 = phi i32 [ %159, %158 ], [ %106, %95 ]
  %137 = phi i64 [ %161, %158 ], [ 1, %95 ]
  %138 = phi i64 [ %162, %158 ], [ 0, %95 ]
  %139 = add nsw i64 %137, -1
  %140 = getelementptr inbounds i8, i8* %0, i64 %139
  %141 = load i8, i8* %140, align 1, !tbaa !17
  %142 = icmp eq i8 %101, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %135
  %144 = getelementptr inbounds i32, i32* %105, i64 %139
  %145 = load i32, i32* %144, align 4, !tbaa !5
  %146 = add nsw i32 %145, %136
  br label %147

147:                                              ; preds = %135, %143
  %148 = phi i32 [ %146, %143 ], [ %136, %135 ]
  %149 = getelementptr inbounds i32, i32* %103, i64 %137
  store i32 %148, i32* %149, align 4, !tbaa !5
  %150 = add nuw nsw i64 %137, 1
  %151 = getelementptr inbounds i8, i8* %0, i64 %137
  %152 = load i8, i8* %151, align 1, !tbaa !17
  %153 = icmp eq i8 %101, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = getelementptr inbounds i32, i32* %105, i64 %137
  %156 = load i32, i32* %155, align 4, !tbaa !5
  %157 = add nsw i32 %156, %148
  br label %158

158:                                              ; preds = %154, %147
  %159 = phi i32 [ %157, %154 ], [ %148, %147 ]
  %160 = getelementptr inbounds i32, i32* %103, i64 %150
  store i32 %159, i32* %160, align 4, !tbaa !5
  %161 = add nuw nsw i64 %137, 2
  %162 = add i64 %138, 2
  %163 = icmp eq i64 %162, %85
  br i1 %163, label %116, label %135, !llvm.loop !19

164:                                              ; preds = %2, %107
  %165 = phi i32 [ %115, %107 ], [ 0, %2 ]
  ret i32 %165
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }

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
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12, !16, !13}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
