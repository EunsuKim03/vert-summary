; ModuleID = 'benchmark/c_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1/FIND_ONE_EXTRA_CHARACTER_STRING_1_processed.c'
source_filename = "benchmark/c_transcoder/FIND_ONE_EXTRA_CHARACTER_STRING_1/FIND_ONE_EXTRA_CHARACTER_STRING_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local signext i8 @f_gold(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %72, label %5

5:                                                ; preds = %2
  %6 = icmp ult i64 %3, 8
  br i1 %6, label %69, label %7

7:                                                ; preds = %5
  %8 = and i64 %3, -8
  %9 = add i64 %8, -8
  %10 = lshr exact i64 %9, 3
  %11 = add nuw nsw i64 %10, 1
  %12 = and i64 %11, 1
  %13 = icmp eq i64 %9, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %7
  %15 = and i64 %11, 4611686018427387902
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %42, %16 ]
  %18 = phi <4 x i32> [ zeroinitializer, %14 ], [ %40, %16 ]
  %19 = phi <4 x i32> [ zeroinitializer, %14 ], [ %41, %16 ]
  %20 = phi i64 [ 0, %14 ], [ %43, %16 ]
  %21 = getelementptr inbounds i8, i8* %0, i64 %17
  %22 = bitcast i8* %21 to <4 x i8>*
  %23 = load <4 x i8>, <4 x i8>* %22, align 1, !tbaa !5
  %24 = getelementptr inbounds i8, i8* %21, i64 4
  %25 = bitcast i8* %24 to <4 x i8>*
  %26 = load <4 x i8>, <4 x i8>* %25, align 1, !tbaa !5
  %27 = zext <4 x i8> %23 to <4 x i32>
  %28 = zext <4 x i8> %26 to <4 x i32>
  %29 = xor <4 x i32> %18, %27
  %30 = xor <4 x i32> %19, %28
  %31 = or i64 %17, 8
  %32 = getelementptr inbounds i8, i8* %0, i64 %31
  %33 = bitcast i8* %32 to <4 x i8>*
  %34 = load <4 x i8>, <4 x i8>* %33, align 1, !tbaa !5
  %35 = getelementptr inbounds i8, i8* %32, i64 4
  %36 = bitcast i8* %35 to <4 x i8>*
  %37 = load <4 x i8>, <4 x i8>* %36, align 1, !tbaa !5
  %38 = zext <4 x i8> %34 to <4 x i32>
  %39 = zext <4 x i8> %37 to <4 x i32>
  %40 = xor <4 x i32> %29, %38
  %41 = xor <4 x i32> %30, %39
  %42 = add nuw i64 %17, 16
  %43 = add i64 %20, 2
  %44 = icmp eq i64 %43, %15
  br i1 %44, label %45, label %16, !llvm.loop !8

45:                                               ; preds = %16, %7
  %46 = phi <4 x i32> [ undef, %7 ], [ %40, %16 ]
  %47 = phi <4 x i32> [ undef, %7 ], [ %41, %16 ]
  %48 = phi i64 [ 0, %7 ], [ %42, %16 ]
  %49 = phi <4 x i32> [ zeroinitializer, %7 ], [ %40, %16 ]
  %50 = phi <4 x i32> [ zeroinitializer, %7 ], [ %41, %16 ]
  %51 = icmp eq i64 %12, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds i8, i8* %0, i64 %48
  %54 = bitcast i8* %53 to <4 x i8>*
  %55 = load <4 x i8>, <4 x i8>* %54, align 1, !tbaa !5
  %56 = getelementptr inbounds i8, i8* %53, i64 4
  %57 = bitcast i8* %56 to <4 x i8>*
  %58 = load <4 x i8>, <4 x i8>* %57, align 1, !tbaa !5
  %59 = zext <4 x i8> %55 to <4 x i32>
  %60 = zext <4 x i8> %58 to <4 x i32>
  %61 = xor <4 x i32> %49, %59
  %62 = xor <4 x i32> %50, %60
  br label %63

63:                                               ; preds = %45, %52
  %64 = phi <4 x i32> [ %46, %45 ], [ %61, %52 ]
  %65 = phi <4 x i32> [ %47, %45 ], [ %62, %52 ]
  %66 = xor <4 x i32> %65, %64
  %67 = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %66)
  %68 = icmp eq i64 %3, %8
  br i1 %68, label %72, label %69

69:                                               ; preds = %5, %63
  %70 = phi i64 [ 0, %5 ], [ %8, %63 ]
  %71 = phi i32 [ 0, %5 ], [ %67, %63 ]
  br label %144

72:                                               ; preds = %144, %63, %2
  %73 = phi i32 [ 0, %2 ], [ %67, %63 ], [ %150, %144 ]
  %74 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %162, label %76

76:                                               ; preds = %72
  %77 = icmp ult i64 %74, 8
  br i1 %77, label %141, label %78

78:                                               ; preds = %76
  %79 = and i64 %74, -8
  %80 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %73, i64 0
  %81 = add i64 %79, -8
  %82 = lshr exact i64 %81, 3
  %83 = add nuw nsw i64 %82, 1
  %84 = and i64 %83, 1
  %85 = icmp eq i64 %81, 0
  br i1 %85, label %117, label %86

86:                                               ; preds = %78
  %87 = and i64 %83, 4611686018427387902
  br label %88

88:                                               ; preds = %88, %86
  %89 = phi i64 [ 0, %86 ], [ %114, %88 ]
  %90 = phi <4 x i32> [ %80, %86 ], [ %112, %88 ]
  %91 = phi <4 x i32> [ zeroinitializer, %86 ], [ %113, %88 ]
  %92 = phi i64 [ 0, %86 ], [ %115, %88 ]
  %93 = getelementptr inbounds i8, i8* %1, i64 %89
  %94 = bitcast i8* %93 to <4 x i8>*
  %95 = load <4 x i8>, <4 x i8>* %94, align 1, !tbaa !5
  %96 = getelementptr inbounds i8, i8* %93, i64 4
  %97 = bitcast i8* %96 to <4 x i8>*
  %98 = load <4 x i8>, <4 x i8>* %97, align 1, !tbaa !5
  %99 = zext <4 x i8> %95 to <4 x i32>
  %100 = zext <4 x i8> %98 to <4 x i32>
  %101 = xor <4 x i32> %90, %99
  %102 = xor <4 x i32> %91, %100
  %103 = or i64 %89, 8
  %104 = getelementptr inbounds i8, i8* %1, i64 %103
  %105 = bitcast i8* %104 to <4 x i8>*
  %106 = load <4 x i8>, <4 x i8>* %105, align 1, !tbaa !5
  %107 = getelementptr inbounds i8, i8* %104, i64 4
  %108 = bitcast i8* %107 to <4 x i8>*
  %109 = load <4 x i8>, <4 x i8>* %108, align 1, !tbaa !5
  %110 = zext <4 x i8> %106 to <4 x i32>
  %111 = zext <4 x i8> %109 to <4 x i32>
  %112 = xor <4 x i32> %101, %110
  %113 = xor <4 x i32> %102, %111
  %114 = add nuw i64 %89, 16
  %115 = add i64 %92, 2
  %116 = icmp eq i64 %115, %87
  br i1 %116, label %117, label %88, !llvm.loop !11

117:                                              ; preds = %88, %78
  %118 = phi <4 x i32> [ undef, %78 ], [ %112, %88 ]
  %119 = phi <4 x i32> [ undef, %78 ], [ %113, %88 ]
  %120 = phi i64 [ 0, %78 ], [ %114, %88 ]
  %121 = phi <4 x i32> [ %80, %78 ], [ %112, %88 ]
  %122 = phi <4 x i32> [ zeroinitializer, %78 ], [ %113, %88 ]
  %123 = icmp eq i64 %84, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %117
  %125 = getelementptr inbounds i8, i8* %1, i64 %120
  %126 = bitcast i8* %125 to <4 x i8>*
  %127 = load <4 x i8>, <4 x i8>* %126, align 1, !tbaa !5
  %128 = getelementptr inbounds i8, i8* %125, i64 4
  %129 = bitcast i8* %128 to <4 x i8>*
  %130 = load <4 x i8>, <4 x i8>* %129, align 1, !tbaa !5
  %131 = zext <4 x i8> %127 to <4 x i32>
  %132 = zext <4 x i8> %130 to <4 x i32>
  %133 = xor <4 x i32> %121, %131
  %134 = xor <4 x i32> %122, %132
  br label %135

135:                                              ; preds = %117, %124
  %136 = phi <4 x i32> [ %118, %117 ], [ %133, %124 ]
  %137 = phi <4 x i32> [ %119, %117 ], [ %134, %124 ]
  %138 = xor <4 x i32> %137, %136
  %139 = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %138)
  %140 = icmp eq i64 %74, %79
  br i1 %140, label %162, label %141

141:                                              ; preds = %76, %135
  %142 = phi i64 [ 0, %76 ], [ %79, %135 ]
  %143 = phi i32 [ %73, %76 ], [ %139, %135 ]
  br label %153

144:                                              ; preds = %69, %144
  %145 = phi i64 [ %151, %144 ], [ %70, %69 ]
  %146 = phi i32 [ %150, %144 ], [ %71, %69 ]
  %147 = getelementptr inbounds i8, i8* %0, i64 %145
  %148 = load i8, i8* %147, align 1, !tbaa !5
  %149 = zext i8 %148 to i32
  %150 = xor i32 %146, %149
  %151 = add nuw nsw i64 %145, 1
  %152 = icmp eq i64 %151, %3
  br i1 %152, label %72, label %144, !llvm.loop !12

153:                                              ; preds = %141, %153
  %154 = phi i64 [ %160, %153 ], [ %142, %141 ]
  %155 = phi i32 [ %159, %153 ], [ %143, %141 ]
  %156 = getelementptr inbounds i8, i8* %1, i64 %154
  %157 = load i8, i8* %156, align 1, !tbaa !5
  %158 = zext i8 %157 to i32
  %159 = xor i32 %155, %158
  %160 = add nuw nsw i64 %154, 1
  %161 = icmp eq i64 %160, %74
  br i1 %161, label %162, label %153, !llvm.loop !14

162:                                              ; preds = %153, %135, %72
  %163 = phi i32 [ %73, %72 ], [ %139, %135 ], [ %159, %153 ]
  %164 = trunc i32 %163 to i8
  ret i8 %164
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #2

attributes #0 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !13, !10}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !9, !13, !10}
