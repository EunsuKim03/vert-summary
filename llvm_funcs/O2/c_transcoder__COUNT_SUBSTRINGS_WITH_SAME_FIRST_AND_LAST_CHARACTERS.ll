; ModuleID = 'benchmark/c_transcoder/COUNT_SUBSTRINGS_WITH_SAME_FIRST_AND_LAST_CHARACTERS/COUNT_SUBSTRINGS_WITH_SAME_FIRST_AND_LAST_CHARACTERS_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_SUBSTRINGS_WITH_SAME_FIRST_AND_LAST_CHARACTERS/COUNT_SUBSTRINGS_WITH_SAME_FIRST_AND_LAST_CHARACTERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %101

5:                                                ; preds = %1
  %6 = and i64 %2, 4294967295
  br label %7

7:                                                ; preds = %103, %5
  %8 = phi i64 [ 0, %5 ], [ %105, %103 ]
  %9 = phi i32 [ 0, %5 ], [ %104, %103 ]
  %10 = xor i64 %8, -1
  %11 = add nsw i64 %6, %10
  %12 = add i64 %11, -8
  %13 = lshr i64 %12, 3
  %14 = add nuw nsw i64 %13, 1
  %15 = xor i64 %8, -1
  %16 = add nsw i64 %6, %15
  %17 = getelementptr inbounds i8, i8* %0, i64 %8
  %18 = load i8, i8* %17, align 1, !tbaa !5
  %19 = add nsw i32 %9, 1
  %20 = add nuw nsw i64 %8, 1
  %21 = icmp eq i64 %20, %6
  br i1 %21, label %103, label %22, !llvm.loop !8

22:                                               ; preds = %7
  %23 = icmp ult i64 %16, 8
  br i1 %23, label %98, label %24

24:                                               ; preds = %22
  %25 = and i64 %16, -8
  %26 = add i64 %20, %25
  %27 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %19, i64 0
  %28 = insertelement <4 x i8> poison, i8 %18, i64 0
  %29 = shufflevector <4 x i8> %28, <4 x i8> poison, <4 x i32> zeroinitializer
  %30 = insertelement <4 x i8> poison, i8 %18, i64 0
  %31 = shufflevector <4 x i8> %30, <4 x i8> poison, <4 x i32> zeroinitializer
  %32 = and i64 %14, 1
  %33 = icmp ult i64 %12, 8
  br i1 %33, label %71, label %34

34:                                               ; preds = %24
  %35 = and i64 %14, 4611686018427387902
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i64 [ 0, %34 ], [ %68, %36 ]
  %38 = phi <4 x i32> [ %27, %34 ], [ %66, %36 ]
  %39 = phi <4 x i32> [ zeroinitializer, %34 ], [ %67, %36 ]
  %40 = phi i64 [ 0, %34 ], [ %69, %36 ]
  %41 = add i64 %20, %37
  %42 = getelementptr inbounds i8, i8* %0, i64 %41
  %43 = bitcast i8* %42 to <4 x i8>*
  %44 = load <4 x i8>, <4 x i8>* %43, align 1, !tbaa !5
  %45 = getelementptr inbounds i8, i8* %42, i64 4
  %46 = bitcast i8* %45 to <4 x i8>*
  %47 = load <4 x i8>, <4 x i8>* %46, align 1, !tbaa !5
  %48 = icmp eq <4 x i8> %29, %44
  %49 = icmp eq <4 x i8> %31, %47
  %50 = zext <4 x i1> %48 to <4 x i32>
  %51 = zext <4 x i1> %49 to <4 x i32>
  %52 = add <4 x i32> %38, %50
  %53 = add <4 x i32> %39, %51
  %54 = or i64 %37, 8
  %55 = add i64 %20, %54
  %56 = getelementptr inbounds i8, i8* %0, i64 %55
  %57 = bitcast i8* %56 to <4 x i8>*
  %58 = load <4 x i8>, <4 x i8>* %57, align 1, !tbaa !5
  %59 = getelementptr inbounds i8, i8* %56, i64 4
  %60 = bitcast i8* %59 to <4 x i8>*
  %61 = load <4 x i8>, <4 x i8>* %60, align 1, !tbaa !5
  %62 = icmp eq <4 x i8> %29, %58
  %63 = icmp eq <4 x i8> %31, %61
  %64 = zext <4 x i1> %62 to <4 x i32>
  %65 = zext <4 x i1> %63 to <4 x i32>
  %66 = add <4 x i32> %52, %64
  %67 = add <4 x i32> %53, %65
  %68 = add nuw i64 %37, 16
  %69 = add i64 %40, 2
  %70 = icmp eq i64 %69, %35
  br i1 %70, label %71, label %36, !llvm.loop !10

71:                                               ; preds = %36, %24
  %72 = phi <4 x i32> [ undef, %24 ], [ %66, %36 ]
  %73 = phi <4 x i32> [ undef, %24 ], [ %67, %36 ]
  %74 = phi i64 [ 0, %24 ], [ %68, %36 ]
  %75 = phi <4 x i32> [ %27, %24 ], [ %66, %36 ]
  %76 = phi <4 x i32> [ zeroinitializer, %24 ], [ %67, %36 ]
  %77 = icmp eq i64 %32, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %71
  %79 = add i64 %20, %74
  %80 = getelementptr inbounds i8, i8* %0, i64 %79
  %81 = bitcast i8* %80 to <4 x i8>*
  %82 = load <4 x i8>, <4 x i8>* %81, align 1, !tbaa !5
  %83 = getelementptr inbounds i8, i8* %80, i64 4
  %84 = bitcast i8* %83 to <4 x i8>*
  %85 = load <4 x i8>, <4 x i8>* %84, align 1, !tbaa !5
  %86 = icmp eq <4 x i8> %29, %82
  %87 = icmp eq <4 x i8> %31, %85
  %88 = zext <4 x i1> %86 to <4 x i32>
  %89 = zext <4 x i1> %87 to <4 x i32>
  %90 = add <4 x i32> %75, %88
  %91 = add <4 x i32> %76, %89
  br label %92

92:                                               ; preds = %71, %78
  %93 = phi <4 x i32> [ %72, %71 ], [ %90, %78 ]
  %94 = phi <4 x i32> [ %73, %71 ], [ %91, %78 ]
  %95 = add <4 x i32> %94, %93
  %96 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %95)
  %97 = icmp eq i64 %16, %25
  br i1 %97, label %103, label %98

98:                                               ; preds = %22, %92
  %99 = phi i64 [ %20, %22 ], [ %26, %92 ]
  %100 = phi i32 [ %19, %22 ], [ %96, %92 ]
  br label %107

101:                                              ; preds = %103, %1
  %102 = phi i32 [ 0, %1 ], [ %104, %103 ]
  ret i32 %102

103:                                              ; preds = %107, %92, %7
  %104 = phi i32 [ %19, %7 ], [ %96, %92 ], [ %114, %107 ]
  %105 = add nuw nsw i64 %8, 1
  %106 = icmp eq i64 %105, %6
  br i1 %106, label %101, label %7, !llvm.loop !12

107:                                              ; preds = %98, %107
  %108 = phi i64 [ %115, %107 ], [ %99, %98 ]
  %109 = phi i32 [ %114, %107 ], [ %100, %98 ]
  %110 = getelementptr inbounds i8, i8* %0, i64 %108
  %111 = load i8, i8* %110, align 1, !tbaa !5
  %112 = icmp eq i8 %18, %111
  %113 = zext i1 %112 to i32
  %114 = add nsw i32 %109, %113
  %115 = add nuw nsw i64 %108, 1
  %116 = icmp eq i64 %115, %6
  br i1 %116, label %103, label %107, !llvm.loop !13
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9, !11}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9, !14, !11}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
