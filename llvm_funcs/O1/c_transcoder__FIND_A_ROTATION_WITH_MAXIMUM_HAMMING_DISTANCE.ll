; ModuleID = 'benchmark/c_transcoder/FIND_A_ROTATION_WITH_MAXIMUM_HAMMING_DISTANCE/FIND_A_ROTATION_WITH_MAXIMUM_HAMMING_DISTANCE_processed.c'
source_filename = "benchmark/c_transcoder/FIND_A_ROTATION_WITH_MAXIMUM_HAMMING_DISTANCE/FIND_A_ROTATION_WITH_MAXIMUM_HAMMING_DISTANCE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = bitcast i32* %0 to i8*
  %4 = shl nsw i32 %1, 1
  %5 = or i32 %4, 1
  %6 = zext i32 %5 to i64
  %7 = alloca i32, i64 %6, align 16
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = bitcast i32* %7 to i8*
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %10, i8* align 4 %3, i64 %12, i1 false), !tbaa !5
  br label %13

13:                                               ; preds = %9, %2
  %14 = icmp sgt i32 %1, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = sext i32 %1 to i64
  %17 = getelementptr i32, i32* %7, i64 %16
  %18 = bitcast i32* %17 to i8*
  %19 = zext i32 %1 to i64
  %20 = shl nuw nsw i64 %19, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %3, i64 %20, i1 false), !tbaa !5
  br label %21

21:                                               ; preds = %15, %13
  %22 = icmp sgt i32 %1, 1
  br i1 %22, label %23, label %57

23:                                               ; preds = %21
  %24 = sext i32 %1 to i64
  %25 = zext i32 %1 to i64
  %26 = icmp sgt i32 %1, 0
  br label %29

27:                                               ; preds = %53
  %28 = icmp eq i64 %56, %25
  br i1 %28, label %57, label %29, !llvm.loop !9

29:                                               ; preds = %23, %27
  %30 = phi i64 [ 1, %23 ], [ %56, %27 ]
  %31 = phi i32 [ 0, %23 ], [ %55, %27 ]
  %32 = phi i32 [ undef, %23 ], [ %54, %27 ]
  %33 = add nsw i64 %30, %24
  br i1 %26, label %37, label %34

34:                                               ; preds = %37, %29
  %35 = phi i32 [ 0, %29 ], [ %47, %37 ]
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %53, label %51

37:                                               ; preds = %29, %37
  %38 = phi i64 [ %48, %37 ], [ %30, %29 ]
  %39 = phi i64 [ %49, %37 ], [ 0, %29 ]
  %40 = phi i32 [ %47, %37 ], [ 0, %29 ]
  %41 = getelementptr inbounds i32, i32* %7, i64 %38
  %42 = load i32, i32* %41, align 4, !tbaa !5
  %43 = getelementptr inbounds i32, i32* %0, i64 %39
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = icmp ne i32 %42, %44
  %46 = zext i1 %45 to i32
  %47 = add nuw nsw i32 %40, %46
  %48 = add nuw nsw i64 %38, 1
  %49 = add nuw nsw i64 %39, 1
  %50 = icmp slt i64 %48, %33
  br i1 %50, label %37, label %34, !llvm.loop !12

51:                                               ; preds = %34
  %52 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %31, i32 noundef %35) #3
  br label %53

53:                                               ; preds = %34, %51
  %54 = phi i32 [ %32, %51 ], [ %1, %34 ]
  %55 = phi i32 [ %52, %51 ], [ %31, %34 ]
  %56 = add nuw nsw i64 %30, 1
  br i1 %36, label %57, label %27

57:                                               ; preds = %53, %27, %21
  %58 = phi i32 [ 0, %21 ], [ %54, %53 ], [ %55, %27 ]
  ret i32 %58
}

declare i32 @max(...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
