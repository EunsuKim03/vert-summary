; ModuleID = 'benchmark/c_transcoder/GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1/GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1_processed.c'
source_filename = "benchmark/c_transcoder/GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1/GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = add i64 %2, 1
  %5 = and i64 %4, 4294967295
  %6 = alloca [10 x i32], i64 %5, align 16
  %7 = bitcast [10 x i32]* %6 to i8*
  %8 = mul nuw nsw i64 %5, 40
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 %8, i1 false)
  %9 = alloca i32, i64 %5, align 16
  %10 = icmp slt i32 %3, 1
  br i1 %10, label %234, label %11

11:                                               ; preds = %1
  %12 = add i64 %2, 1
  %13 = and i64 %12, 4294967295
  %14 = add nsw i64 %13, -1
  %15 = icmp ult i64 %14, 8
  br i1 %15, label %84, label %16

16:                                               ; preds = %11
  %17 = and i64 %14, -8
  %18 = or i64 %17, 1
  %19 = add nsw i64 %17, -8
  %20 = lshr exact i64 %19, 3
  %21 = add nuw nsw i64 %20, 1
  %22 = and i64 %21, 1
  %23 = icmp eq i64 %19, 0
  br i1 %23, label %63, label %24

24:                                               ; preds = %16
  %25 = and i64 %21, 4611686018427387902
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi i64 [ 0, %24 ], [ %60, %26 ]
  %28 = phi i64 [ 0, %24 ], [ %61, %26 ]
  %29 = or i64 %27, 1
  %30 = getelementptr inbounds i8, i8* %0, i64 %27
  %31 = bitcast i8* %30 to <4 x i8>*
  %32 = load <4 x i8>, <4 x i8>* %31, align 1, !tbaa !5
  %33 = getelementptr inbounds i8, i8* %30, i64 4
  %34 = bitcast i8* %33 to <4 x i8>*
  %35 = load <4 x i8>, <4 x i8>* %34, align 1, !tbaa !5
  %36 = sext <4 x i8> %32 to <4 x i32>
  %37 = sext <4 x i8> %35 to <4 x i32>
  %38 = add nsw <4 x i32> %36, <i32 -48, i32 -48, i32 -48, i32 -48>
  %39 = add nsw <4 x i32> %37, <i32 -48, i32 -48, i32 -48, i32 -48>
  %40 = getelementptr inbounds i32, i32* %9, i64 %29
  %41 = bitcast i32* %40 to <4 x i32>*
  store <4 x i32> %38, <4 x i32>* %41, align 4, !tbaa !8
  %42 = getelementptr inbounds i32, i32* %40, i64 4
  %43 = bitcast i32* %42 to <4 x i32>*
  store <4 x i32> %39, <4 x i32>* %43, align 4, !tbaa !8
  %44 = or i64 %27, 8
  %45 = or i64 %27, 9
  %46 = getelementptr inbounds i8, i8* %0, i64 %44
  %47 = bitcast i8* %46 to <4 x i8>*
  %48 = load <4 x i8>, <4 x i8>* %47, align 1, !tbaa !5
  %49 = getelementptr inbounds i8, i8* %46, i64 4
  %50 = bitcast i8* %49 to <4 x i8>*
  %51 = load <4 x i8>, <4 x i8>* %50, align 1, !tbaa !5
  %52 = sext <4 x i8> %48 to <4 x i32>
  %53 = sext <4 x i8> %51 to <4 x i32>
  %54 = add nsw <4 x i32> %52, <i32 -48, i32 -48, i32 -48, i32 -48>
  %55 = add nsw <4 x i32> %53, <i32 -48, i32 -48, i32 -48, i32 -48>
  %56 = getelementptr inbounds i32, i32* %9, i64 %45
  %57 = bitcast i32* %56 to <4 x i32>*
  store <4 x i32> %54, <4 x i32>* %57, align 4, !tbaa !8
  %58 = getelementptr inbounds i32, i32* %56, i64 4
  %59 = bitcast i32* %58 to <4 x i32>*
  store <4 x i32> %55, <4 x i32>* %59, align 4, !tbaa !8
  %60 = add nuw i64 %27, 16
  %61 = add i64 %28, 2
  %62 = icmp eq i64 %61, %25
  br i1 %62, label %63, label %26, !llvm.loop !10

63:                                               ; preds = %26, %16
  %64 = phi i64 [ 0, %16 ], [ %60, %26 ]
  %65 = icmp eq i64 %22, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %63
  %67 = or i64 %64, 1
  %68 = getelementptr inbounds i8, i8* %0, i64 %64
  %69 = bitcast i8* %68 to <4 x i8>*
  %70 = load <4 x i8>, <4 x i8>* %69, align 1, !tbaa !5
  %71 = getelementptr inbounds i8, i8* %68, i64 4
  %72 = bitcast i8* %71 to <4 x i8>*
  %73 = load <4 x i8>, <4 x i8>* %72, align 1, !tbaa !5
  %74 = sext <4 x i8> %70 to <4 x i32>
  %75 = sext <4 x i8> %73 to <4 x i32>
  %76 = add nsw <4 x i32> %74, <i32 -48, i32 -48, i32 -48, i32 -48>
  %77 = add nsw <4 x i32> %75, <i32 -48, i32 -48, i32 -48, i32 -48>
  %78 = getelementptr inbounds i32, i32* %9, i64 %67
  %79 = bitcast i32* %78 to <4 x i32>*
  store <4 x i32> %76, <4 x i32>* %79, align 4, !tbaa !8
  %80 = getelementptr inbounds i32, i32* %78, i64 4
  %81 = bitcast i32* %80 to <4 x i32>*
  store <4 x i32> %77, <4 x i32>* %81, align 4, !tbaa !8
  br label %82

82:                                               ; preds = %63, %66
  %83 = icmp eq i64 %14, %17
  br i1 %83, label %86, label %84

84:                                               ; preds = %11, %82
  %85 = phi i64 [ 1, %11 ], [ %18, %82 ]
  br label %90

86:                                               ; preds = %90, %82
  br i1 %10, label %234, label %87

87:                                               ; preds = %86
  %88 = add i64 %2, 1
  %89 = and i64 %88, 4294967295
  br label %109

90:                                               ; preds = %84, %90
  %91 = phi i64 [ %98, %90 ], [ %85, %84 ]
  %92 = add nsw i64 %91, -1
  %93 = getelementptr inbounds i8, i8* %0, i64 %92
  %94 = load i8, i8* %93, align 1, !tbaa !5
  %95 = sext i8 %94 to i32
  %96 = add nsw i32 %95, -48
  %97 = getelementptr inbounds i32, i32* %9, i64 %91
  store i32 %96, i32* %97, align 4, !tbaa !8
  %98 = add nuw nsw i64 %91, 1
  %99 = icmp eq i64 %98, %13
  br i1 %99, label %86, label %90, !llvm.loop !13

100:                                              ; preds = %109
  br i1 %10, label %234, label %101

101:                                              ; preds = %100
  %102 = shl i64 %2, 32
  %103 = ashr exact i64 %102, 32
  %104 = add i64 %2, 1
  %105 = and i64 %104, 4294967295
  %106 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 1, i64 0
  %107 = load i32, i32* %106, align 8, !tbaa !8
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %234, label %223

109:                                              ; preds = %87, %109
  %110 = phi i64 [ 1, %87 ], [ %221, %109 ]
  %111 = getelementptr inbounds i32, i32* %9, i64 %110
  %112 = load i32, i32* %111, align 4, !tbaa !8
  %113 = srem i32 %112, 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %110, i64 %114
  %116 = add nsw i64 %110, -1
  %117 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %116, i64 0
  %118 = load i32, i32* %117, align 8, !tbaa !8
  %119 = icmp sgt i32 %118, 1
  %120 = select i1 %119, i32 %118, i32 1
  store i32 %120, i32* %115, align 4
  %121 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %110, i64 0
  %122 = load i32, i32* %121, align 8, !tbaa !8
  %123 = icmp sgt i32 %118, %122
  %124 = select i1 %123, i32 %118, i32 %122
  store i32 %124, i32* %121, align 8
  %125 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %116, i64 1
  %126 = load i32, i32* %125, align 4, !tbaa !8
  %127 = add i32 %112, 10
  %128 = srem i32 %127, 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %110, i64 %129
  %131 = load i32, i32* %130, align 4, !tbaa !8
  %132 = icmp sgt i32 %126, %131
  %133 = select i1 %132, i32 %126, i32 %131
  store i32 %133, i32* %130, align 4
  %134 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %110, i64 1
  %135 = load i32, i32* %134, align 4, !tbaa !8
  %136 = icmp sgt i32 %126, %135
  %137 = select i1 %136, i32 %126, i32 %135
  store i32 %137, i32* %134, align 4
  %138 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %116, i64 2
  %139 = load i32, i32* %138, align 8, !tbaa !8
  %140 = add i32 %112, 20
  %141 = srem i32 %140, 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %110, i64 %142
  %144 = load i32, i32* %143, align 4, !tbaa !8
  %145 = icmp sgt i32 %139, %144
  %146 = select i1 %145, i32 %139, i32 %144
  store i32 %146, i32* %143, align 4
  %147 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %110, i64 2
  %148 = load i32, i32* %147, align 8, !tbaa !8
  %149 = icmp sgt i32 %139, %148
  %150 = select i1 %149, i32 %139, i32 %148
  store i32 %150, i32* %147, align 8
  %151 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %116, i64 3
  %152 = load i32, i32* %151, align 4, !tbaa !8
  %153 = add i32 %112, 30
  %154 = srem i32 %153, 8
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %110, i64 %155
  %157 = load i32, i32* %156, align 4, !tbaa !8
  %158 = icmp sgt i32 %152, %157
  %159 = select i1 %158, i32 %152, i32 %157
  store i32 %159, i32* %156, align 4
  %160 = load i32, i32* %151, align 4, !tbaa !8
  %161 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %110, i64 3
  %162 = load i32, i32* %161, align 4, !tbaa !8
  %163 = icmp sgt i32 %160, %162
  %164 = select i1 %163, i32 %160, i32 %162
  store i32 %164, i32* %161, align 4
  %165 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %116, i64 4
  %166 = load i32, i32* %165, align 8, !tbaa !8
  %167 = add i32 %112, 40
  %168 = srem i32 %167, 8
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %110, i64 %169
  %171 = load i32, i32* %170, align 4, !tbaa !8
  %172 = icmp sgt i32 %166, %171
  %173 = select i1 %172, i32 %166, i32 %171
  store i32 %173, i32* %170, align 4
  %174 = load i32, i32* %165, align 8, !tbaa !8
  %175 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %110, i64 4
  %176 = load i32, i32* %175, align 8, !tbaa !8
  %177 = icmp sgt i32 %174, %176
  %178 = select i1 %177, i32 %174, i32 %176
  store i32 %178, i32* %175, align 8
  %179 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %116, i64 5
  %180 = load i32, i32* %179, align 4, !tbaa !8
  %181 = add i32 %112, 50
  %182 = srem i32 %181, 8
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %110, i64 %183
  %185 = load i32, i32* %184, align 4, !tbaa !8
  %186 = icmp sgt i32 %180, %185
  %187 = select i1 %186, i32 %180, i32 %185
  store i32 %187, i32* %184, align 4
  %188 = load i32, i32* %179, align 4, !tbaa !8
  %189 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %110, i64 5
  %190 = load i32, i32* %189, align 4, !tbaa !8
  %191 = icmp sgt i32 %188, %190
  %192 = select i1 %191, i32 %188, i32 %190
  store i32 %192, i32* %189, align 4
  %193 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %116, i64 6
  %194 = load i32, i32* %193, align 8, !tbaa !8
  %195 = add i32 %112, 60
  %196 = srem i32 %195, 8
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %110, i64 %197
  %199 = load i32, i32* %198, align 4, !tbaa !8
  %200 = icmp sgt i32 %194, %199
  %201 = select i1 %200, i32 %194, i32 %199
  store i32 %201, i32* %198, align 4
  %202 = load i32, i32* %193, align 8, !tbaa !8
  %203 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %110, i64 6
  %204 = load i32, i32* %203, align 8, !tbaa !8
  %205 = icmp sgt i32 %202, %204
  %206 = select i1 %205, i32 %202, i32 %204
  store i32 %206, i32* %203, align 8
  %207 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %116, i64 7
  %208 = load i32, i32* %207, align 4, !tbaa !8
  %209 = add i32 %112, 70
  %210 = srem i32 %209, 8
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %110, i64 %211
  %213 = load i32, i32* %212, align 4, !tbaa !8
  %214 = icmp sgt i32 %208, %213
  %215 = select i1 %214, i32 %208, i32 %213
  store i32 %215, i32* %212, align 4
  %216 = load i32, i32* %207, align 4, !tbaa !8
  %217 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %110, i64 7
  %218 = load i32, i32* %217, align 4, !tbaa !8
  %219 = icmp sgt i32 %216, %218
  %220 = select i1 %219, i32 %216, i32 %218
  store i32 %220, i32* %217, align 4
  %221 = add nuw nsw i64 %110, 1
  %222 = icmp eq i64 %221, %89
  br i1 %222, label %100, label %109, !llvm.loop !15

223:                                              ; preds = %101, %227
  %224 = phi i64 [ %225, %227 ], [ 1, %101 ]
  %225 = add nuw nsw i64 %224, 1
  %226 = icmp eq i64 %225, %105
  br i1 %226, label %231, label %227, !llvm.loop !16

227:                                              ; preds = %223
  %228 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %225, i64 0
  %229 = load i32, i32* %228, align 8, !tbaa !8
  %230 = icmp eq i32 %229, 1
  br i1 %230, label %231, label %223, !llvm.loop !16

231:                                              ; preds = %223, %227
  %232 = icmp slt i64 %224, %103
  %233 = zext i1 %232 to i32
  br label %234

234:                                              ; preds = %231, %101, %1, %86, %100
  %235 = phi i32 [ 0, %100 ], [ 0, %86 ], [ 0, %1 ], [ 1, %101 ], [ %233, %231 ]
  ret i32 %235
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !11, !14, !12}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
