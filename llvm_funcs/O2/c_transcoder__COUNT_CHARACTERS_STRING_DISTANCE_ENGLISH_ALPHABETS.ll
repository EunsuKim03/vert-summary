; ModuleID = 'benchmark/c_transcoder/COUNT_CHARACTERS_STRING_DISTANCE_ENGLISH_ALPHABETS/COUNT_CHARACTERS_STRING_DISTANCE_ENGLISH_ALPHABETS_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_CHARACTERS_STRING_DISTANCE_ENGLISH_ALPHABETS/COUNT_CHARACTERS_STRING_DISTANCE_ENGLISH_ALPHABETS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = shl i64 %2, 32
  %7 = ashr exact i64 %6, 32
  %8 = and i64 %2, 4294967295
  br label %15

9:                                                ; preds = %84, %77, %15
  %10 = phi i32 [ %18, %15 ], [ %79, %77 ], [ %97, %84 ]
  %11 = add nuw nsw i64 %17, 1
  %12 = icmp eq i64 %21, %8
  br i1 %12, label %13, label %15, !llvm.loop !5

13:                                               ; preds = %9, %1
  %14 = phi i32 [ 0, %1 ], [ %10, %9 ]
  ret i32 %14

15:                                               ; preds = %5, %9
  %16 = phi i64 [ 0, %5 ], [ %21, %9 ]
  %17 = phi i64 [ 1, %5 ], [ %11, %9 ]
  %18 = phi i32 [ 0, %5 ], [ %10, %9 ]
  %19 = xor i64 %16, -1
  %20 = add nsw i64 %8, %19
  %21 = add nuw nsw i64 %16, 1
  %22 = icmp slt i64 %21, %7
  br i1 %22, label %23, label %9

23:                                               ; preds = %15
  %24 = getelementptr inbounds i8, i8* %0, i64 %16
  %25 = load i8, i8* %24, align 1, !tbaa !7
  %26 = sext i8 %25 to i32
  %27 = trunc i64 %16 to i32
  %28 = icmp ult i64 %20, 8
  br i1 %28, label %81, label %29

29:                                               ; preds = %23
  %30 = and i64 %20, -8
  %31 = add i64 %17, %30
  %32 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %18, i64 0
  %33 = trunc i64 %17 to i32
  %34 = insertelement <4 x i32> poison, i32 %33, i64 0
  %35 = shufflevector <4 x i32> %34, <4 x i32> poison, <4 x i32> zeroinitializer
  %36 = add <4 x i32> %35, <i32 0, i32 1, i32 2, i32 3>
  %37 = insertelement <4 x i32> poison, i32 %26, i64 0
  %38 = shufflevector <4 x i32> %37, <4 x i32> poison, <4 x i32> zeroinitializer
  %39 = insertelement <4 x i32> poison, i32 %26, i64 0
  %40 = shufflevector <4 x i32> %39, <4 x i32> poison, <4 x i32> zeroinitializer
  %41 = insertelement <4 x i32> poison, i32 %27, i64 0
  %42 = shufflevector <4 x i32> %41, <4 x i32> poison, <4 x i32> zeroinitializer
  %43 = insertelement <4 x i32> poison, i32 %27, i64 0
  %44 = shufflevector <4 x i32> %43, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %45

45:                                               ; preds = %45, %29
  %46 = phi i64 [ 0, %29 ], [ %74, %45 ]
  %47 = phi <4 x i32> [ %32, %29 ], [ %72, %45 ]
  %48 = phi <4 x i32> [ zeroinitializer, %29 ], [ %73, %45 ]
  %49 = phi <4 x i32> [ %36, %29 ], [ %75, %45 ]
  %50 = add i64 %17, %46
  %51 = add <4 x i32> %49, <i32 4, i32 4, i32 4, i32 4>
  %52 = getelementptr inbounds i8, i8* %0, i64 %50
  %53 = bitcast i8* %52 to <4 x i8>*
  %54 = load <4 x i8>, <4 x i8>* %53, align 1, !tbaa !7
  %55 = getelementptr inbounds i8, i8* %52, i64 4
  %56 = bitcast i8* %55 to <4 x i8>*
  %57 = load <4 x i8>, <4 x i8>* %56, align 1, !tbaa !7
  %58 = sext <4 x i8> %54 to <4 x i32>
  %59 = sext <4 x i8> %57 to <4 x i32>
  %60 = sub nsw <4 x i32> %38, %58
  %61 = sub nsw <4 x i32> %40, %59
  %62 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %60, i1 true)
  %63 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %61, i1 true)
  %64 = sub nsw <4 x i32> %42, %49
  %65 = sub nsw <4 x i32> %44, %51
  %66 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %64, i1 true)
  %67 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %65, i1 true)
  %68 = icmp eq <4 x i32> %62, %66
  %69 = icmp eq <4 x i32> %63, %67
  %70 = zext <4 x i1> %68 to <4 x i32>
  %71 = zext <4 x i1> %69 to <4 x i32>
  %72 = add <4 x i32> %47, %70
  %73 = add <4 x i32> %48, %71
  %74 = add nuw i64 %46, 8
  %75 = add <4 x i32> %49, <i32 8, i32 8, i32 8, i32 8>
  %76 = icmp eq i64 %74, %30
  br i1 %76, label %77, label %45, !llvm.loop !10

77:                                               ; preds = %45
  %78 = add <4 x i32> %73, %72
  %79 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %78)
  %80 = icmp eq i64 %20, %30
  br i1 %80, label %9, label %81

81:                                               ; preds = %23, %77
  %82 = phi i64 [ %17, %23 ], [ %31, %77 ]
  %83 = phi i32 [ %18, %23 ], [ %79, %77 ]
  br label %84

84:                                               ; preds = %81, %84
  %85 = phi i64 [ %98, %84 ], [ %82, %81 ]
  %86 = phi i32 [ %97, %84 ], [ %83, %81 ]
  %87 = trunc i64 %85 to i32
  %88 = getelementptr inbounds i8, i8* %0, i64 %85
  %89 = load i8, i8* %88, align 1, !tbaa !7
  %90 = sext i8 %89 to i32
  %91 = sub nsw i32 %26, %90
  %92 = tail call i32 @llvm.abs.i32(i32 %91, i1 true)
  %93 = sub nsw i32 %27, %87
  %94 = tail call i32 @llvm.abs.i32(i32 %93, i1 true)
  %95 = icmp eq i32 %92, %94
  %96 = zext i1 %95 to i32
  %97 = add nsw i32 %86, %96
  %98 = add nuw nsw i64 %85, 1
  %99 = icmp eq i64 %98, %8
  br i1 %99, label %9, label %84, !llvm.loop !12
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

attributes #0 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !6, !11}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !6, !13, !11}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
