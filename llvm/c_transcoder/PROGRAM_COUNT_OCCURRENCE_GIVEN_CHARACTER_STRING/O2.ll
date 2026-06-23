; ModuleID = 'benchmark/c_transcoder/PROGRAM_COUNT_OCCURRENCE_GIVEN_CHARACTER_STRING/PROGRAM_COUNT_OCCURRENCE_GIVEN_CHARACTER_STRING_processed.c'
source_filename = "benchmark/c_transcoder/PROGRAM_COUNT_OCCURRENCE_GIVEN_CHARACTER_STRING/PROGRAM_COUNT_OCCURRENCE_GIVEN_CHARACTER_STRING_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i8 noundef signext %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %82, label %5

5:                                                ; preds = %2
  %6 = icmp ult i64 %3, 8
  br i1 %6, label %79, label %7

7:                                                ; preds = %5
  %8 = and i64 %3, -8
  %9 = insertelement <4 x i8> poison, i8 %1, i64 0
  %10 = shufflevector <4 x i8> %9, <4 x i8> poison, <4 x i32> zeroinitializer
  %11 = insertelement <4 x i8> poison, i8 %1, i64 0
  %12 = shufflevector <4 x i8> %11, <4 x i8> poison, <4 x i32> zeroinitializer
  %13 = add i64 %8, -8
  %14 = lshr exact i64 %13, 3
  %15 = add nuw nsw i64 %14, 1
  %16 = and i64 %15, 1
  %17 = icmp eq i64 %13, 0
  br i1 %17, label %53, label %18

18:                                               ; preds = %7
  %19 = and i64 %15, 4611686018427387902
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i64 [ 0, %18 ], [ %50, %20 ]
  %22 = phi <4 x i32> [ zeroinitializer, %18 ], [ %48, %20 ]
  %23 = phi <4 x i32> [ zeroinitializer, %18 ], [ %49, %20 ]
  %24 = phi i64 [ 0, %18 ], [ %51, %20 ]
  %25 = getelementptr inbounds i8, i8* %0, i64 %21
  %26 = bitcast i8* %25 to <4 x i8>*
  %27 = load <4 x i8>, <4 x i8>* %26, align 1, !tbaa !5
  %28 = getelementptr inbounds i8, i8* %25, i64 4
  %29 = bitcast i8* %28 to <4 x i8>*
  %30 = load <4 x i8>, <4 x i8>* %29, align 1, !tbaa !5
  %31 = icmp eq <4 x i8> %27, %10
  %32 = icmp eq <4 x i8> %30, %12
  %33 = zext <4 x i1> %31 to <4 x i32>
  %34 = zext <4 x i1> %32 to <4 x i32>
  %35 = add <4 x i32> %22, %33
  %36 = add <4 x i32> %23, %34
  %37 = or i64 %21, 8
  %38 = getelementptr inbounds i8, i8* %0, i64 %37
  %39 = bitcast i8* %38 to <4 x i8>*
  %40 = load <4 x i8>, <4 x i8>* %39, align 1, !tbaa !5
  %41 = getelementptr inbounds i8, i8* %38, i64 4
  %42 = bitcast i8* %41 to <4 x i8>*
  %43 = load <4 x i8>, <4 x i8>* %42, align 1, !tbaa !5
  %44 = icmp eq <4 x i8> %40, %10
  %45 = icmp eq <4 x i8> %43, %12
  %46 = zext <4 x i1> %44 to <4 x i32>
  %47 = zext <4 x i1> %45 to <4 x i32>
  %48 = add <4 x i32> %35, %46
  %49 = add <4 x i32> %36, %47
  %50 = add nuw i64 %21, 16
  %51 = add i64 %24, 2
  %52 = icmp eq i64 %51, %19
  br i1 %52, label %53, label %20, !llvm.loop !8

53:                                               ; preds = %20, %7
  %54 = phi <4 x i32> [ undef, %7 ], [ %48, %20 ]
  %55 = phi <4 x i32> [ undef, %7 ], [ %49, %20 ]
  %56 = phi i64 [ 0, %7 ], [ %50, %20 ]
  %57 = phi <4 x i32> [ zeroinitializer, %7 ], [ %48, %20 ]
  %58 = phi <4 x i32> [ zeroinitializer, %7 ], [ %49, %20 ]
  %59 = icmp eq i64 %16, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds i8, i8* %0, i64 %56
  %62 = bitcast i8* %61 to <4 x i8>*
  %63 = load <4 x i8>, <4 x i8>* %62, align 1, !tbaa !5
  %64 = getelementptr inbounds i8, i8* %61, i64 4
  %65 = bitcast i8* %64 to <4 x i8>*
  %66 = load <4 x i8>, <4 x i8>* %65, align 1, !tbaa !5
  %67 = icmp eq <4 x i8> %63, %10
  %68 = icmp eq <4 x i8> %66, %12
  %69 = zext <4 x i1> %67 to <4 x i32>
  %70 = zext <4 x i1> %68 to <4 x i32>
  %71 = add <4 x i32> %57, %69
  %72 = add <4 x i32> %58, %70
  br label %73

73:                                               ; preds = %53, %60
  %74 = phi <4 x i32> [ %54, %53 ], [ %71, %60 ]
  %75 = phi <4 x i32> [ %55, %53 ], [ %72, %60 ]
  %76 = add <4 x i32> %75, %74
  %77 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %76)
  %78 = icmp eq i64 %3, %8
  br i1 %78, label %82, label %79

79:                                               ; preds = %5, %73
  %80 = phi i64 [ 0, %5 ], [ %8, %73 ]
  %81 = phi i32 [ 0, %5 ], [ %77, %73 ]
  br label %84

82:                                               ; preds = %84, %73, %2
  %83 = phi i32 [ 0, %2 ], [ %77, %73 ], [ %91, %84 ]
  ret i32 %83

84:                                               ; preds = %79, %84
  %85 = phi i64 [ %92, %84 ], [ %80, %79 ]
  %86 = phi i32 [ %91, %84 ], [ %81, %79 ]
  %87 = getelementptr inbounds i8, i8* %0, i64 %85
  %88 = load i8, i8* %87, align 1, !tbaa !5
  %89 = icmp eq i8 %88, %1
  %90 = zext i1 %89 to i32
  %91 = add nuw nsw i32 %86, %90
  %92 = add nuw nsw i64 %85, 1
  %93 = icmp eq i64 %92, %3
  br i1 %93, label %82, label %84, !llvm.loop !11
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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = distinct !{!11, !9, !12, !10}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
