; ModuleID = 'benchmark/c_transcoder/NUMBER_OF_BINARY_TREES_FOR_GIVEN_PREORDER_SEQUENCE_LENGTH/NUMBER_OF_BINARY_TREES_FOR_GIVEN_PREORDER_SEQUENCE_LENGTH_processed.c'
source_filename = "benchmark/c_transcoder/NUMBER_OF_BINARY_TREES_FOR_GIVEN_PREORDER_SEQUENCE_LENGTH/NUMBER_OF_BINARY_TREES_FOR_GIVEN_PREORDER_SEQUENCE_LENGTH_processed.c"
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
  %7 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 1, i32* %7, align 4, !tbaa !5
  store i32 1, i32* %4, align 16, !tbaa !5
  %8 = icmp slt i32 %0, 2
  br i1 %8, label %18, label %9

9:                                                ; preds = %1, %35
  %10 = phi i64 [ %38, %35 ], [ 0, %1 ]
  %11 = phi i64 [ %36, %35 ], [ 2, %1 ]
  %12 = getelementptr inbounds i32, i32* %4, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = and i64 %11, 1
  %15 = icmp eq i64 %10, -1
  br i1 %15, label %22, label %16

16:                                               ; preds = %9
  %17 = and i64 %11, 9223372036854775806
  br label %39

18:                                               ; preds = %35, %1
  %19 = sext i32 %0 to i64
  %20 = getelementptr inbounds i32, i32* %4, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !5
  ret i32 %21

22:                                               ; preds = %39, %9
  %23 = phi i32 [ %13, %9 ], [ %59, %39 ]
  %24 = phi i64 [ 0, %9 ], [ %60, %39 ]
  %25 = icmp eq i64 %14, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds i32, i32* %4, i64 %24
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = xor i64 %24, -1
  %30 = add nsw i64 %11, %29
  %31 = getelementptr inbounds i32, i32* %4, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = mul nsw i32 %32, %28
  %34 = add nsw i32 %23, %33
  store i32 %34, i32* %12, align 4, !tbaa !5
  br label %35

35:                                               ; preds = %22, %26
  %36 = add nuw nsw i64 %11, 1
  %37 = icmp eq i64 %36, %3
  %38 = add i64 %10, 1
  br i1 %37, label %18, label %9, !llvm.loop !9

39:                                               ; preds = %39, %16
  %40 = phi i32 [ %13, %16 ], [ %59, %39 ]
  %41 = phi i64 [ 0, %16 ], [ %60, %39 ]
  %42 = phi i64 [ 0, %16 ], [ %61, %39 ]
  %43 = getelementptr inbounds i32, i32* %4, i64 %41
  %44 = load i32, i32* %43, align 8, !tbaa !5
  %45 = xor i64 %41, -1
  %46 = add nsw i64 %11, %45
  %47 = getelementptr inbounds i32, i32* %4, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !5
  %49 = mul nsw i32 %48, %44
  %50 = add nsw i32 %40, %49
  store i32 %50, i32* %12, align 4, !tbaa !5
  %51 = or i64 %41, 1
  %52 = getelementptr inbounds i32, i32* %4, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !5
  %54 = sub nuw nsw i64 -2, %41
  %55 = add nsw i64 %11, %54
  %56 = getelementptr inbounds i32, i32* %4, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !5
  %58 = mul nsw i32 %57, %53
  %59 = add nsw i32 %50, %58
  store i32 %59, i32* %12, align 4, !tbaa !5
  %60 = add nuw nsw i64 %41, 2
  %61 = add i64 %42, 2
  %62 = icmp eq i64 %61, %17
  br i1 %62, label %22, label %39, !llvm.loop !11
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
