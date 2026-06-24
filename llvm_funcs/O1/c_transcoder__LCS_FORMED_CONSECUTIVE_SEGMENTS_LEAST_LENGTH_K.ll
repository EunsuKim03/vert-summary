; ModuleID = 'benchmark/c_transcoder/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K_processed.c'
source_filename = "benchmark/c_transcoder/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K/LCS_FORMED_CONSECUTIVE_SEGMENTS_LEAST_LENGTH_K_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1)
  %5 = trunc i64 %4 to i32
  %6 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2)
  %7 = add i64 %4, 1
  %8 = and i64 %7, 4294967295
  %9 = add i64 %6, 1
  %10 = and i64 %9, 4294967295
  %11 = mul nuw i64 %10, %8
  %12 = alloca i32, i64 %11, align 16
  %13 = alloca i32, i64 %11, align 16
  %14 = bitcast i32* %12 to i8*
  %15 = shl nuw i64 %11, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %14, i8 0, i64 %15, i1 false)
  %16 = bitcast i32* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %16, i8 0, i64 %15, i1 false)
  %17 = icmp slt i32 %5, 1
  br i1 %17, label %38, label %18

18:                                               ; preds = %3
  %19 = trunc i64 %6 to i32
  %20 = icmp slt i32 %19, 1
  %21 = sext i32 %0 to i64
  %22 = add i64 %6, 1
  %23 = add i64 %4, 1
  %24 = and i64 %23, 4294967295
  %25 = and i64 %22, 4294967295
  br label %26

26:                                               ; preds = %18, %47
  %27 = phi i64 [ 1, %18 ], [ %48, %47 ]
  br i1 %20, label %47, label %28

28:                                               ; preds = %26
  %29 = add nsw i64 %27, -1
  %30 = mul nuw nsw i64 %10, %29
  %31 = getelementptr inbounds i32, i32* %12, i64 %30
  %32 = mul nuw nsw i64 %10, %27
  %33 = getelementptr inbounds i32, i32* %12, i64 %32
  %34 = getelementptr inbounds i8, i8* %1, i64 %29
  %35 = getelementptr inbounds i32, i32* %13, i64 %30
  %36 = getelementptr inbounds i32, i32* %13, i64 %32
  %37 = getelementptr inbounds i32, i32* %13, i64 %32
  br label %50

38:                                               ; preds = %47, %3
  %39 = shl i64 %4, 32
  %40 = ashr exact i64 %39, 32
  %41 = mul nsw i64 %10, %40
  %42 = getelementptr inbounds i32, i32* %12, i64 %41
  %43 = shl i64 %6, 32
  %44 = ashr exact i64 %43, 32
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !5
  ret i32 %46

47:                                               ; preds = %89, %26
  %48 = add nuw nsw i64 %27, 1
  %49 = icmp eq i64 %48, %24
  br i1 %49, label %38, label %26, !llvm.loop !9

50:                                               ; preds = %28, %89
  %51 = phi i64 [ 1, %28 ], [ %90, %89 ]
  %52 = getelementptr inbounds i32, i32* %31, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !5
  %54 = add nsw i64 %51, -1
  %55 = getelementptr inbounds i32, i32* %33, i64 %54
  %56 = load i32, i32* %55, align 4, !tbaa !5
  %57 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %53, i32 noundef %56) #4
  %58 = getelementptr inbounds i32, i32* %33, i64 %51
  store i32 %57, i32* %58, align 4, !tbaa !5
  %59 = load i8, i8* %34, align 1, !tbaa !12
  %60 = getelementptr inbounds i8, i8* %2, i64 %54
  %61 = load i8, i8* %60, align 1, !tbaa !12
  %62 = icmp eq i8 %59, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %50
  %64 = getelementptr inbounds i32, i32* %35, i64 %54
  %65 = load i32, i32* %64, align 4, !tbaa !5
  %66 = add nsw i32 %65, 1
  %67 = getelementptr inbounds i32, i32* %36, i64 %51
  store i32 %66, i32* %67, align 4, !tbaa !5
  br label %68

68:                                               ; preds = %63, %50
  %69 = getelementptr inbounds i32, i32* %37, i64 %51
  %70 = load i32, i32* %69, align 4, !tbaa !5
  %71 = icmp slt i32 %70, %0
  br i1 %71, label %89, label %72

72:                                               ; preds = %68
  %73 = add i32 %70, 1
  br label %74

74:                                               ; preds = %72, %74
  %75 = phi i64 [ %21, %72 ], [ %86, %74 ]
  %76 = load i32, i32* %58, align 4, !tbaa !5
  %77 = sub nsw i64 %27, %75
  %78 = mul nsw i64 %10, %77
  %79 = getelementptr inbounds i32, i32* %12, i64 %78
  %80 = sub nsw i64 %51, %75
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4, !tbaa !5
  %83 = trunc i64 %75 to i32
  %84 = add nsw i32 %82, %83
  %85 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %76, i32 noundef %84) #4
  store i32 %85, i32* %58, align 4, !tbaa !5
  %86 = add nsw i64 %75, 1
  %87 = trunc i64 %86 to i32
  %88 = icmp eq i32 %73, %87
  br i1 %88, label %89, label %74, !llvm.loop !13

89:                                               ; preds = %74, %68
  %90 = add nuw nsw i64 %51, 1
  %91 = icmp eq i64 %90, %25
  br i1 %91, label %47, label %50, !llvm.loop !14
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @max(...) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
