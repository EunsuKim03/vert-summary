; ModuleID = 'benchmark/c_transcoder/CHANGE_BITS_CAN_MADE_ONE_FLIP_1/CHANGE_BITS_CAN_MADE_ONE_FLIP_1_processed.c'
source_filename = "benchmark/c_transcoder/CHANGE_BITS_CAN_MADE_ONE_FLIP_1/CHANGE_BITS_CAN_MADE_ONE_FLIP_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %36

5:                                                ; preds = %1
  %6 = and i64 %2, 4294967295
  %7 = icmp ult i64 %6, 8
  br i1 %7, label %33, label %8

8:                                                ; preds = %5
  %9 = and i64 %2, 7
  %10 = sub nsw i64 %6, %9
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi i64 [ 0, %8 ], [ %27, %11 ]
  %13 = phi <4 x i32> [ zeroinitializer, %8 ], [ %25, %11 ]
  %14 = phi <4 x i32> [ zeroinitializer, %8 ], [ %26, %11 ]
  %15 = getelementptr inbounds i8, i8* %0, i64 %12
  %16 = bitcast i8* %15 to <4 x i8>*
  %17 = load <4 x i8>, <4 x i8>* %16, align 1, !tbaa !5
  %18 = getelementptr inbounds i8, i8* %15, i64 4
  %19 = bitcast i8* %18 to <4 x i8>*
  %20 = load <4 x i8>, <4 x i8>* %19, align 1, !tbaa !5
  %21 = sext <4 x i8> %17 to <4 x i32>
  %22 = sext <4 x i8> %20 to <4 x i32>
  %23 = add <4 x i32> %13, <i32 -48, i32 -48, i32 -48, i32 -48>
  %24 = add <4 x i32> %14, <i32 -48, i32 -48, i32 -48, i32 -48>
  %25 = add <4 x i32> %23, %21
  %26 = add <4 x i32> %24, %22
  %27 = add nuw i64 %12, 8
  %28 = icmp eq i64 %27, %10
  br i1 %28, label %29, label %11, !llvm.loop !8

29:                                               ; preds = %11
  %30 = add <4 x i32> %26, %25
  %31 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %30)
  %32 = icmp eq i64 %9, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %5, %29
  %34 = phi i64 [ 0, %5 ], [ %10, %29 ]
  %35 = phi i32 [ 0, %5 ], [ %31, %29 ]
  br label %43

36:                                               ; preds = %43, %29, %1
  %37 = phi i32 [ 0, %1 ], [ %31, %29 ], [ %50, %43 ]
  %38 = add nsw i32 %3, -1
  %39 = icmp eq i32 %37, %38
  %40 = icmp eq i32 %37, 1
  %41 = or i1 %39, %40
  %42 = zext i1 %41 to i32
  ret i32 %42

43:                                               ; preds = %33, %43
  %44 = phi i64 [ %51, %43 ], [ %34, %33 ]
  %45 = phi i32 [ %50, %43 ], [ %35, %33 ]
  %46 = getelementptr inbounds i8, i8* %0, i64 %44
  %47 = load i8, i8* %46, align 1, !tbaa !5
  %48 = sext i8 %47 to i32
  %49 = add i32 %45, -48
  %50 = add i32 %49, %48
  %51 = add nuw nsw i64 %44, 1
  %52 = icmp eq i64 %51, %6
  br i1 %52, label %36, label %43, !llvm.loop !11
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
