; ModuleID = 'benchmark/c_transcoder/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N_processed.c'
source_filename = "benchmark/c_transcoder/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %4 = trunc i64 %3 to i32
  %5 = and i64 %3, 4294967295
  %6 = zext i32 %1 to i64
  %7 = mul nuw i64 %5, %6
  %8 = alloca i32, i64 %7, align 16
  %9 = bitcast i32* %8 to i8*
  %10 = shl nuw i64 %7, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)
  %11 = load i8, i8* %0, align 1, !tbaa !5
  %12 = sext i8 %11 to i32
  %13 = add nsw i32 %12, -48
  %14 = srem i32 %13, %1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %8, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4, !tbaa !8
  %19 = icmp sgt i32 %4, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = icmp sgt i32 %1, 0
  %22 = and i64 %3, 4294967295
  br label %30

23:                                               ; preds = %47, %2
  %24 = shl i64 %3, 32
  %25 = add i64 %24, -4294967296
  %26 = ashr exact i64 %25, 32
  %27 = mul nsw i64 %26, %6
  %28 = getelementptr inbounds i32, i32* %8, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !8
  ret i32 %29

30:                                               ; preds = %20, %47
  %31 = phi i64 [ 1, %20 ], [ %48, %47 ]
  %32 = mul nuw nsw i64 %31, %6
  %33 = getelementptr inbounds i32, i32* %8, i64 %32
  %34 = getelementptr inbounds i8, i8* %0, i64 %31
  %35 = load i8, i8* %34, align 1, !tbaa !5
  %36 = sext i8 %35 to i32
  %37 = add nsw i32 %36, -48
  %38 = srem i32 %37, %1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %33, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4, !tbaa !8
  br i1 %21, label %43, label %47

43:                                               ; preds = %30
  %44 = add nsw i64 %31, -1
  %45 = mul nuw nsw i64 %44, %6
  %46 = getelementptr inbounds i32, i32* %8, i64 %45
  br label %50

47:                                               ; preds = %50, %30
  %48 = add nuw nsw i64 %31, 1
  %49 = icmp eq i64 %48, %22
  br i1 %49, label %23, label %30, !llvm.loop !10

50:                                               ; preds = %43, %50
  %51 = phi i64 [ 0, %43 ], [ %66, %50 ]
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !8
  %54 = getelementptr inbounds i32, i32* %33, i64 %51
  %55 = load i32, i32* %54, align 4, !tbaa !8
  %56 = add nsw i32 %55, %53
  store i32 %56, i32* %54, align 4, !tbaa !8
  %57 = load i32, i32* %52, align 4, !tbaa !8
  %58 = trunc i64 %51 to i32
  %59 = mul i32 %58, 10
  %60 = add nsw i32 %59, %37
  %61 = srem i32 %60, %1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %33, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !8
  %65 = add nsw i32 %64, %57
  store i32 %65, i32* %63, align 4, !tbaa !8
  %66 = add nuw nsw i64 %51, 1
  %67 = icmp eq i64 %66, %6
  br i1 %67, label %47, label %50, !llvm.loop !12
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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
