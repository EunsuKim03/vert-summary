; ModuleID = 'benchmark/c_transcoder/COUNT_NUMBER_WAYS_REACH_GIVEN_SCORE_GAME/COUNT_NUMBER_WAYS_REACH_GIVEN_SCORE_GAME_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_NUMBER_WAYS_REACH_GIVEN_SCORE_GAME/COUNT_NUMBER_WAYS_REACH_GIVEN_SCORE_GAME_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = icmp slt i32 %0, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %4, align 16, !tbaa !5
  br label %177

7:                                                ; preds = %1
  %8 = bitcast i32* %4 to i8*
  %9 = zext i32 %0 to i64
  %10 = shl nuw nsw i64 %9, 2
  %11 = add nuw nsw i64 %10, 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 %8, i8 0, i64 %11, i1 false), !tbaa !5
  store i32 1, i32* %4, align 16, !tbaa !5
  %12 = icmp ult i32 %0, 3
  br i1 %12, label %177, label %13

13:                                               ; preds = %7
  %14 = add nsw i64 %3, -3
  %15 = and i64 %14, 1
  %16 = icmp eq i32 %2, 4
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = and i64 %14, -2
  br label %37

19:                                               ; preds = %37, %13
  %20 = phi i64 [ 3, %13 ], [ %53, %37 ]
  %21 = icmp eq i64 %15, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = add nsw i64 %20, -3
  %24 = getelementptr inbounds i32, i32* %4, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = getelementptr inbounds i32, i32* %4, i64 %20
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = add nsw i32 %27, %25
  store i32 %28, i32* %26, align 4, !tbaa !5
  br label %29

29:                                               ; preds = %19, %22
  %30 = icmp slt i32 %0, 5
  br i1 %30, label %177, label %31

31:                                               ; preds = %29
  %32 = add nsw i64 %3, -5
  %33 = and i64 %32, 1
  %34 = icmp eq i32 %2, 6
  br i1 %34, label %56, label %35

35:                                               ; preds = %31
  %36 = and i64 %32, -2
  br label %148

37:                                               ; preds = %37, %17
  %38 = phi i64 [ 3, %17 ], [ %53, %37 ]
  %39 = phi i64 [ 0, %17 ], [ %54, %37 ]
  %40 = add nsw i64 %38, -3
  %41 = getelementptr inbounds i32, i32* %4, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %43 = getelementptr inbounds i32, i32* %4, i64 %38
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = add nsw i32 %44, %42
  store i32 %45, i32* %43, align 4, !tbaa !5
  %46 = add nuw nsw i64 %38, 1
  %47 = add nsw i64 %38, -2
  %48 = getelementptr inbounds i32, i32* %4, i64 %47
  %49 = load i32, i32* %48, align 4, !tbaa !5
  %50 = getelementptr inbounds i32, i32* %4, i64 %46
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %52 = add nsw i32 %51, %49
  store i32 %52, i32* %50, align 4, !tbaa !5
  %53 = add nuw nsw i64 %38, 2
  %54 = add i64 %39, 2
  %55 = icmp eq i64 %54, %18
  br i1 %55, label %19, label %37, !llvm.loop !9

56:                                               ; preds = %148, %31
  %57 = phi i64 [ 5, %31 ], [ %164, %148 ]
  %58 = icmp eq i64 %33, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = add nsw i64 %57, -5
  %61 = getelementptr inbounds i32, i32* %4, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !5
  %63 = getelementptr inbounds i32, i32* %4, i64 %57
  %64 = load i32, i32* %63, align 4, !tbaa !5
  %65 = add nsw i32 %64, %62
  store i32 %65, i32* %63, align 4, !tbaa !5
  br label %66

66:                                               ; preds = %56, %59
  %67 = icmp slt i32 %0, 10
  br i1 %67, label %177, label %68

68:                                               ; preds = %66
  %69 = add nsw i64 %3, -10
  %70 = icmp ult i64 %69, 2
  br i1 %70, label %146, label %71

71:                                               ; preds = %68
  %72 = and i64 %69, -2
  %73 = add nsw i64 %72, 10
  %74 = add nsw i64 %72, -2
  %75 = lshr exact i64 %74, 1
  %76 = add nuw i64 %75, 1
  %77 = and i64 %76, 3
  %78 = icmp ult i64 %74, 6
  br i1 %78, label %126, label %79

79:                                               ; preds = %71
  %80 = and i64 %76, -4
  br label %81

81:                                               ; preds = %81, %79
  %82 = phi i64 [ 0, %79 ], [ %123, %81 ]
  %83 = phi i64 [ 0, %79 ], [ %124, %81 ]
  %84 = add i64 %82, 10
  %85 = getelementptr inbounds i32, i32* %4, i64 %82
  %86 = bitcast i32* %85 to <2 x i32>*
  %87 = load <2 x i32>, <2 x i32>* %86, align 16, !tbaa !5
  %88 = getelementptr inbounds i32, i32* %4, i64 %84
  %89 = bitcast i32* %88 to <2 x i32>*
  %90 = load <2 x i32>, <2 x i32>* %89, align 8, !tbaa !5
  %91 = add nsw <2 x i32> %90, %87
  %92 = bitcast i32* %88 to <2 x i32>*
  store <2 x i32> %91, <2 x i32>* %92, align 8, !tbaa !5
  %93 = or i64 %82, 2
  %94 = add i64 %82, 12
  %95 = getelementptr inbounds i32, i32* %4, i64 %93
  %96 = bitcast i32* %95 to <2 x i32>*
  %97 = load <2 x i32>, <2 x i32>* %96, align 8, !tbaa !5
  %98 = getelementptr inbounds i32, i32* %4, i64 %94
  %99 = bitcast i32* %98 to <2 x i32>*
  %100 = load <2 x i32>, <2 x i32>* %99, align 16, !tbaa !5
  %101 = add nsw <2 x i32> %100, %97
  %102 = bitcast i32* %98 to <2 x i32>*
  store <2 x i32> %101, <2 x i32>* %102, align 16, !tbaa !5
  %103 = or i64 %82, 4
  %104 = add i64 %82, 14
  %105 = getelementptr inbounds i32, i32* %4, i64 %103
  %106 = bitcast i32* %105 to <2 x i32>*
  %107 = load <2 x i32>, <2 x i32>* %106, align 16, !tbaa !5
  %108 = getelementptr inbounds i32, i32* %4, i64 %104
  %109 = bitcast i32* %108 to <2 x i32>*
  %110 = load <2 x i32>, <2 x i32>* %109, align 8, !tbaa !5
  %111 = add nsw <2 x i32> %110, %107
  %112 = bitcast i32* %108 to <2 x i32>*
  store <2 x i32> %111, <2 x i32>* %112, align 8, !tbaa !5
  %113 = or i64 %82, 6
  %114 = add i64 %82, 16
  %115 = getelementptr inbounds i32, i32* %4, i64 %113
  %116 = bitcast i32* %115 to <2 x i32>*
  %117 = load <2 x i32>, <2 x i32>* %116, align 8, !tbaa !5
  %118 = getelementptr inbounds i32, i32* %4, i64 %114
  %119 = bitcast i32* %118 to <2 x i32>*
  %120 = load <2 x i32>, <2 x i32>* %119, align 16, !tbaa !5
  %121 = add nsw <2 x i32> %120, %117
  %122 = bitcast i32* %118 to <2 x i32>*
  store <2 x i32> %121, <2 x i32>* %122, align 16, !tbaa !5
  %123 = add nuw i64 %82, 8
  %124 = add i64 %83, 4
  %125 = icmp eq i64 %124, %80
  br i1 %125, label %126, label %81, !llvm.loop !11

126:                                              ; preds = %81, %71
  %127 = phi i64 [ 0, %71 ], [ %123, %81 ]
  %128 = icmp eq i64 %77, 0
  br i1 %128, label %144, label %129

129:                                              ; preds = %126, %129
  %130 = phi i64 [ %141, %129 ], [ %127, %126 ]
  %131 = phi i64 [ %142, %129 ], [ 0, %126 ]
  %132 = add i64 %130, 10
  %133 = getelementptr inbounds i32, i32* %4, i64 %130
  %134 = bitcast i32* %133 to <2 x i32>*
  %135 = load <2 x i32>, <2 x i32>* %134, align 8, !tbaa !5
  %136 = getelementptr inbounds i32, i32* %4, i64 %132
  %137 = bitcast i32* %136 to <2 x i32>*
  %138 = load <2 x i32>, <2 x i32>* %137, align 8, !tbaa !5
  %139 = add nsw <2 x i32> %138, %135
  %140 = bitcast i32* %136 to <2 x i32>*
  store <2 x i32> %139, <2 x i32>* %140, align 8, !tbaa !5
  %141 = add nuw i64 %130, 2
  %142 = add i64 %131, 1
  %143 = icmp eq i64 %142, %77
  br i1 %143, label %144, label %129, !llvm.loop !13

144:                                              ; preds = %129, %126
  %145 = icmp eq i64 %69, %72
  br i1 %145, label %177, label %146

146:                                              ; preds = %68, %144
  %147 = phi i64 [ 10, %68 ], [ %73, %144 ]
  br label %167

148:                                              ; preds = %148, %35
  %149 = phi i64 [ 5, %35 ], [ %164, %148 ]
  %150 = phi i64 [ 0, %35 ], [ %165, %148 ]
  %151 = add nsw i64 %149, -5
  %152 = getelementptr inbounds i32, i32* %4, i64 %151
  %153 = load i32, i32* %152, align 4, !tbaa !5
  %154 = getelementptr inbounds i32, i32* %4, i64 %149
  %155 = load i32, i32* %154, align 4, !tbaa !5
  %156 = add nsw i32 %155, %153
  store i32 %156, i32* %154, align 4, !tbaa !5
  %157 = add nuw nsw i64 %149, 1
  %158 = add nsw i64 %149, -4
  %159 = getelementptr inbounds i32, i32* %4, i64 %158
  %160 = load i32, i32* %159, align 4, !tbaa !5
  %161 = getelementptr inbounds i32, i32* %4, i64 %157
  %162 = load i32, i32* %161, align 4, !tbaa !5
  %163 = add nsw i32 %162, %160
  store i32 %163, i32* %161, align 4, !tbaa !5
  %164 = add nuw nsw i64 %149, 2
  %165 = add i64 %150, 2
  %166 = icmp eq i64 %165, %36
  br i1 %166, label %56, label %148, !llvm.loop !15

167:                                              ; preds = %146, %167
  %168 = phi i64 [ %175, %167 ], [ %147, %146 ]
  %169 = add nsw i64 %168, -10
  %170 = getelementptr inbounds i32, i32* %4, i64 %169
  %171 = load i32, i32* %170, align 4, !tbaa !5
  %172 = getelementptr inbounds i32, i32* %4, i64 %168
  %173 = load i32, i32* %172, align 4, !tbaa !5
  %174 = add nsw i32 %173, %171
  store i32 %174, i32* %172, align 4, !tbaa !5
  %175 = add nuw nsw i64 %168, 1
  %176 = icmp eq i64 %175, %3
  br i1 %176, label %177, label %167, !llvm.loop !16

177:                                              ; preds = %167, %144, %7, %6, %29, %66
  %178 = sext i32 %0 to i64
  %179 = getelementptr inbounds i32, i32* %4, i64 %178
  %180 = load i32, i32* %179, align 4, !tbaa !5
  ret i32 %180
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }

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
!11 = distinct !{!11, !10, !12}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !17, !12}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
