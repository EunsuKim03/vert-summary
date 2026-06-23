; ModuleID = 'benchmark/c_transcoder/WAYS_TO_WRITE_N_AS_SUM_OF_TWO_OR_MORE_POSITIVE_INTEGERS/WAYS_TO_WRITE_N_AS_SUM_OF_TWO_OR_MORE_POSITIVE_INTEGERS_processed.c'
source_filename = "benchmark/c_transcoder/WAYS_TO_WRITE_N_AS_SUM_OF_TWO_OR_MORE_POSITIVE_INTEGERS/WAYS_TO_WRITE_N_AS_SUM_OF_TWO_OR_MORE_POSITIVE_INTEGERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = bitcast i32* %4 to i8*
  %6 = shl nuw nsw i64 %3, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 %6, i1 false)
  store i32 1, i32* %4, align 16, !tbaa !5
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %119

8:                                                ; preds = %1
  %9 = zext i32 %0 to i64
  %10 = getelementptr i32, i32* %4, i64 %3
  %11 = icmp ult i32* %4, %10
  %12 = sub nsw i64 0, %3
  br label %13

13:                                               ; preds = %123, %8
  %14 = phi i64 [ %126, %123 ], [ 0, %8 ]
  %15 = phi i64 [ %124, %123 ], [ 1, %8 ]
  %16 = xor i64 %14, -1
  %17 = add i64 %16, %3
  %18 = add i64 %17, -8
  %19 = lshr i64 %18, 3
  %20 = add nuw nsw i64 %19, 1
  %21 = xor i64 %14, -1
  %22 = add i64 %21, %3
  %23 = icmp ult i64 %22, 8
  br i1 %23, label %102, label %24

24:                                               ; preds = %13
  %25 = xor i64 %14, -1
  %26 = add i64 %25, %3
  %27 = getelementptr i32, i32* %4, i64 %26
  %28 = getelementptr i32, i32* %4, i64 %15
  %29 = icmp ult i32* %28, %27
  %30 = and i1 %29, %11
  br i1 %30, label %102, label %31

31:                                               ; preds = %24
  %32 = and i64 %22, -8
  %33 = add i64 %15, %32
  %34 = and i64 %20, 1
  %35 = icmp ult i64 %18, 8
  br i1 %35, label %79, label %36

36:                                               ; preds = %31
  %37 = and i64 %20, 4611686018427387902
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi i64 [ 0, %36 ], [ %76, %38 ]
  %40 = phi i64 [ 0, %36 ], [ %77, %38 ]
  %41 = add i64 %15, %39
  %42 = getelementptr inbounds i32, i32* %4, i64 %39
  %43 = bitcast i32* %42 to <4 x i32>*
  %44 = load <4 x i32>, <4 x i32>* %43, align 16, !tbaa !5, !alias.scope !9
  %45 = getelementptr inbounds i32, i32* %42, i64 4
  %46 = bitcast i32* %45 to <4 x i32>*
  %47 = load <4 x i32>, <4 x i32>* %46, align 16, !tbaa !5, !alias.scope !9
  %48 = getelementptr inbounds i32, i32* %4, i64 %41
  %49 = bitcast i32* %48 to <4 x i32>*
  %50 = load <4 x i32>, <4 x i32>* %49, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %51 = getelementptr inbounds i32, i32* %48, i64 4
  %52 = bitcast i32* %51 to <4 x i32>*
  %53 = load <4 x i32>, <4 x i32>* %52, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %54 = add nsw <4 x i32> %50, %44
  %55 = add nsw <4 x i32> %53, %47
  %56 = bitcast i32* %48 to <4 x i32>*
  store <4 x i32> %54, <4 x i32>* %56, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %57 = bitcast i32* %51 to <4 x i32>*
  store <4 x i32> %55, <4 x i32>* %57, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %58 = or i64 %39, 8
  %59 = add i64 %15, %58
  %60 = getelementptr inbounds i32, i32* %4, i64 %58
  %61 = bitcast i32* %60 to <4 x i32>*
  %62 = load <4 x i32>, <4 x i32>* %61, align 16, !tbaa !5, !alias.scope !9
  %63 = getelementptr inbounds i32, i32* %60, i64 4
  %64 = bitcast i32* %63 to <4 x i32>*
  %65 = load <4 x i32>, <4 x i32>* %64, align 16, !tbaa !5, !alias.scope !9
  %66 = getelementptr inbounds i32, i32* %4, i64 %59
  %67 = bitcast i32* %66 to <4 x i32>*
  %68 = load <4 x i32>, <4 x i32>* %67, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %69 = getelementptr inbounds i32, i32* %66, i64 4
  %70 = bitcast i32* %69 to <4 x i32>*
  %71 = load <4 x i32>, <4 x i32>* %70, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %72 = add nsw <4 x i32> %68, %62
  %73 = add nsw <4 x i32> %71, %65
  %74 = bitcast i32* %66 to <4 x i32>*
  store <4 x i32> %72, <4 x i32>* %74, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %75 = bitcast i32* %69 to <4 x i32>*
  store <4 x i32> %73, <4 x i32>* %75, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %76 = add nuw i64 %39, 16
  %77 = add i64 %40, 2
  %78 = icmp eq i64 %77, %37
  br i1 %78, label %79, label %38, !llvm.loop !14

79:                                               ; preds = %38, %31
  %80 = phi i64 [ 0, %31 ], [ %76, %38 ]
  %81 = icmp eq i64 %34, 0
  br i1 %81, label %100, label %82

82:                                               ; preds = %79
  %83 = add i64 %15, %80
  %84 = getelementptr inbounds i32, i32* %4, i64 %80
  %85 = bitcast i32* %84 to <4 x i32>*
  %86 = load <4 x i32>, <4 x i32>* %85, align 16, !tbaa !5, !alias.scope !9
  %87 = getelementptr inbounds i32, i32* %84, i64 4
  %88 = bitcast i32* %87 to <4 x i32>*
  %89 = load <4 x i32>, <4 x i32>* %88, align 16, !tbaa !5, !alias.scope !9
  %90 = getelementptr inbounds i32, i32* %4, i64 %83
  %91 = bitcast i32* %90 to <4 x i32>*
  %92 = load <4 x i32>, <4 x i32>* %91, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %93 = getelementptr inbounds i32, i32* %90, i64 4
  %94 = bitcast i32* %93 to <4 x i32>*
  %95 = load <4 x i32>, <4 x i32>* %94, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %96 = add nsw <4 x i32> %92, %86
  %97 = add nsw <4 x i32> %95, %89
  %98 = bitcast i32* %90 to <4 x i32>*
  store <4 x i32> %96, <4 x i32>* %98, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  %99 = bitcast i32* %93 to <4 x i32>*
  store <4 x i32> %97, <4 x i32>* %99, align 4, !tbaa !5, !alias.scope !12, !noalias !9
  br label %100

100:                                              ; preds = %79, %82
  %101 = icmp eq i64 %22, %32
  br i1 %101, label %123, label %102

102:                                              ; preds = %24, %13, %100
  %103 = phi i64 [ %15, %24 ], [ %15, %13 ], [ %33, %100 ]
  %104 = sub i64 %3, %103
  %105 = xor i64 %103, -1
  %106 = and i64 %104, 1
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %102
  %109 = sub nuw nsw i64 %103, %15
  %110 = getelementptr inbounds i32, i32* %4, i64 %109
  %111 = load i32, i32* %110, align 4, !tbaa !5
  %112 = getelementptr inbounds i32, i32* %4, i64 %103
  %113 = load i32, i32* %112, align 4, !tbaa !5
  %114 = add nsw i32 %113, %111
  store i32 %114, i32* %112, align 4, !tbaa !5
  %115 = add nuw nsw i64 %103, 1
  br label %116

116:                                              ; preds = %108, %102
  %117 = phi i64 [ %103, %102 ], [ %115, %108 ]
  %118 = icmp eq i64 %105, %12
  br i1 %118, label %123, label %127

119:                                              ; preds = %123, %1
  %120 = sext i32 %0 to i64
  %121 = getelementptr inbounds i32, i32* %4, i64 %120
  %122 = load i32, i32* %121, align 4, !tbaa !5
  ret i32 %122

123:                                              ; preds = %116, %127, %100
  %124 = add nuw nsw i64 %15, 1
  %125 = icmp eq i64 %124, %9
  %126 = add i64 %14, 1
  br i1 %125, label %119, label %13, !llvm.loop !17

127:                                              ; preds = %116, %127
  %128 = phi i64 [ %142, %127 ], [ %117, %116 ]
  %129 = sub nuw nsw i64 %128, %15
  %130 = getelementptr inbounds i32, i32* %4, i64 %129
  %131 = load i32, i32* %130, align 4, !tbaa !5
  %132 = getelementptr inbounds i32, i32* %4, i64 %128
  %133 = load i32, i32* %132, align 4, !tbaa !5
  %134 = add nsw i32 %133, %131
  store i32 %134, i32* %132, align 4, !tbaa !5
  %135 = add nuw nsw i64 %128, 1
  %136 = sub nuw nsw i64 %135, %15
  %137 = getelementptr inbounds i32, i32* %4, i64 %136
  %138 = load i32, i32* %137, align 4, !tbaa !5
  %139 = getelementptr inbounds i32, i32* %4, i64 %135
  %140 = load i32, i32* %139, align 4, !tbaa !5
  %141 = add nsw i32 %140, %138
  store i32 %141, i32* %139, align 4, !tbaa !5
  %142 = add nuw nsw i64 %128, 2
  %143 = icmp eq i64 %142, %3
  br i1 %143, label %123, label %127, !llvm.loop !18
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nofree nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }

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
!9 = !{!10}
!10 = distinct !{!10, !11}
!11 = distinct !{!11, !"LVerDomain"}
!12 = !{!13}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15, !16}
