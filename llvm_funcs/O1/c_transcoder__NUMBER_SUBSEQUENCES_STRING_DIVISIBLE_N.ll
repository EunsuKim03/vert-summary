; ModuleID = 'benchmark/c_transcoder/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N_processed.c'
source_filename = "benchmark/c_transcoder/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N/NUMBER_SUBSEQUENCES_STRING_DIVISIBLE_N_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
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
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = icmp sgt i32 %1, 0
  %22 = and i64 %3, 4294967295
  %23 = zext i32 %1 to i64
  br label %31

24:                                               ; preds = %48, %2
  %25 = shl i64 %3, 32
  %26 = add i64 %25, -4294967296
  %27 = ashr exact i64 %26, 32
  %28 = mul nsw i64 %27, %6
  %29 = getelementptr inbounds i32, i32* %8, i64 %28
  %30 = load i32, i32* %29, align 4, !tbaa !8
  ret i32 %30

31:                                               ; preds = %20, %48
  %32 = phi i64 [ 1, %20 ], [ %49, %48 ]
  %33 = mul nuw nsw i64 %32, %6
  %34 = getelementptr inbounds i32, i32* %8, i64 %33
  %35 = getelementptr inbounds i8, i8* %0, i64 %32
  %36 = load i8, i8* %35, align 1, !tbaa !5
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %37, -48
  %39 = srem i32 %38, %1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %34, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4, !tbaa !8
  br i1 %21, label %44, label %48

44:                                               ; preds = %31
  %45 = add nsw i64 %32, -1
  %46 = mul nuw nsw i64 %45, %6
  %47 = getelementptr inbounds i32, i32* %8, i64 %46
  br label %51

48:                                               ; preds = %51, %31
  %49 = add nuw nsw i64 %32, 1
  %50 = icmp eq i64 %49, %22
  br i1 %50, label %24, label %31, !llvm.loop !10

51:                                               ; preds = %44, %51
  %52 = phi i64 [ 0, %44 ], [ %67, %51 ]
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !8
  %55 = getelementptr inbounds i32, i32* %34, i64 %52
  %56 = load i32, i32* %55, align 4, !tbaa !8
  %57 = add nsw i32 %56, %54
  store i32 %57, i32* %55, align 4, !tbaa !8
  %58 = load i32, i32* %53, align 4, !tbaa !8
  %59 = trunc i64 %52 to i32
  %60 = mul i32 %59, 10
  %61 = add nsw i32 %60, %38
  %62 = srem i32 %61, %1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %34, i64 %63
  %65 = load i32, i32* %64, align 4, !tbaa !8
  %66 = add nsw i32 %65, %58
  store i32 %66, i32* %64, align 4, !tbaa !8
  %67 = add nuw nsw i64 %52, 1
  %68 = icmp eq i64 %67, %23
  br i1 %68, label %48, label %51, !llvm.loop !13
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
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
