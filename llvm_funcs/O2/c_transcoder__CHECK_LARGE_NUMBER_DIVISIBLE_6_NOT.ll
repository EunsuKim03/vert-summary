; ModuleID = 'benchmark/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT_processed.c'
source_filename = "benchmark/c_transcoder/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT/CHECK_LARGE_NUMBER_DIVISIBLE_6_NOT_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = shl i64 %2, 32
  %4 = add i64 %3, -4294967296
  %5 = ashr exact i64 %4, 32
  %6 = getelementptr inbounds i8, i8* %0, i64 %5
  %7 = load i8, i8* %6, align 1, !tbaa !5
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %59

10:                                               ; preds = %1
  %11 = trunc i64 %2 to i32
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %59

13:                                               ; preds = %10
  %14 = and i64 %2, 4294967295
  %15 = icmp ult i64 %14, 8
  br i1 %15, label %41, label %16

16:                                               ; preds = %13
  %17 = and i64 %2, 7
  %18 = sub nsw i64 %14, %17
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi i64 [ 0, %16 ], [ %35, %19 ]
  %21 = phi <4 x i32> [ zeroinitializer, %16 ], [ %33, %19 ]
  %22 = phi <4 x i32> [ zeroinitializer, %16 ], [ %34, %19 ]
  %23 = getelementptr inbounds i8, i8* %0, i64 %20
  %24 = bitcast i8* %23 to <4 x i8>*
  %25 = load <4 x i8>, <4 x i8>* %24, align 1, !tbaa !5
  %26 = getelementptr inbounds i8, i8* %23, i64 4
  %27 = bitcast i8* %26 to <4 x i8>*
  %28 = load <4 x i8>, <4 x i8>* %27, align 1, !tbaa !5
  %29 = sext <4 x i8> %25 to <4 x i32>
  %30 = sext <4 x i8> %28 to <4 x i32>
  %31 = add <4 x i32> %21, <i32 -48, i32 -48, i32 -48, i32 -48>
  %32 = add <4 x i32> %22, <i32 -48, i32 -48, i32 -48, i32 -48>
  %33 = add <4 x i32> %31, %29
  %34 = add <4 x i32> %32, %30
  %35 = add nuw i64 %20, 8
  %36 = icmp eq i64 %35, %18
  br i1 %36, label %37, label %19, !llvm.loop !8

37:                                               ; preds = %19
  %38 = add <4 x i32> %34, %33
  %39 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %38)
  %40 = icmp eq i64 %17, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %13, %37
  %42 = phi i64 [ 0, %13 ], [ %18, %37 ]
  %43 = phi i32 [ 0, %13 ], [ %39, %37 ]
  br label %49

44:                                               ; preds = %49, %37
  %45 = phi i32 [ %39, %37 ], [ %56, %49 ]
  %46 = srem i32 %45, 3
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  br label %59

49:                                               ; preds = %41, %49
  %50 = phi i64 [ %57, %49 ], [ %42, %41 ]
  %51 = phi i32 [ %56, %49 ], [ %43, %41 ]
  %52 = getelementptr inbounds i8, i8* %0, i64 %50
  %53 = load i8, i8* %52, align 1, !tbaa !5
  %54 = sext i8 %53 to i32
  %55 = add i32 %51, -48
  %56 = add i32 %55, %54
  %57 = add nuw nsw i64 %50, 1
  %58 = icmp eq i64 %57, %14
  br i1 %58, label %44, label %49, !llvm.loop !11

59:                                               ; preds = %10, %44, %1
  %60 = phi i32 [ 0, %1 ], [ 1, %10 ], [ %48, %44 ]
  ret i32 %60
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
