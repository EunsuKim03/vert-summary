; ModuleID = 'benchmark/c_transcoder/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = add i64 %2, 1
  %5 = and i64 %4, 4294967295
  %6 = mul nuw i64 %5, %5
  %7 = alloca i32, i64 %6, align 16
  %8 = bitcast i32* %7 to i8*
  %9 = shl nuw i64 %6, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 %9, i1 false)
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = and i64 %2, 4294967295
  br label %19

13:                                               ; preds = %19, %1
  %14 = icmp slt i32 %3, 2
  br i1 %14, label %28, label %15

15:                                               ; preds = %13
  %16 = add i64 %2, 1
  %17 = and i64 %16, 4294967295
  %18 = and i64 %2, 4294967295
  br label %26

19:                                               ; preds = %11, %19
  %20 = phi i64 [ 0, %11 ], [ %24, %19 ]
  %21 = mul nuw nsw i64 %5, %20
  %22 = getelementptr inbounds i32, i32* %7, i64 %21
  %23 = getelementptr inbounds i32, i32* %22, i64 %20
  store i32 1, i32* %23, align 4, !tbaa !5
  %24 = add nuw nsw i64 %20, 1
  %25 = icmp eq i64 %24, %12
  br i1 %25, label %13, label %19, !llvm.loop !9

26:                                               ; preds = %15, %34
  %27 = phi i64 [ 2, %15 ], [ %35, %34 ]
  br label %37

28:                                               ; preds = %34, %13
  %29 = shl i64 %2, 32
  %30 = add i64 %29, -4294967296
  %31 = ashr exact i64 %30, 32
  %32 = getelementptr inbounds i32, i32* %7, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !5
  ret i32 %33

34:                                               ; preds = %64
  %35 = add nuw nsw i64 %27, 1
  %36 = icmp eq i64 %35, %17
  br i1 %36, label %28, label %26, !llvm.loop !12

37:                                               ; preds = %26, %64
  %38 = phi i64 [ 0, %26 ], [ %67, %64 ]
  %39 = add nuw nsw i64 %38, %27
  %40 = add nsw i64 %39, -1
  %41 = getelementptr inbounds i8, i8* %0, i64 %38
  %42 = load i8, i8* %41, align 1, !tbaa !13
  %43 = getelementptr inbounds i8, i8* %0, i64 %40
  %44 = load i8, i8* %43, align 1, !tbaa !13
  %45 = icmp eq i8 %42, %44
  %46 = mul nuw nsw i64 %5, %38
  %47 = getelementptr inbounds i32, i32* %7, i64 %46
  %48 = add nsw i64 %39, -2
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4, !tbaa !5
  %51 = add nuw nsw i64 %38, 1
  %52 = mul nuw nsw i64 %5, %51
  %53 = getelementptr inbounds i32, i32* %7, i64 %52
  %54 = getelementptr inbounds i32, i32* %53, i64 %40
  %55 = load i32, i32* %54, align 4, !tbaa !5
  br i1 %45, label %56, label %59

56:                                               ; preds = %37
  %57 = add i32 %50, 1
  %58 = add i32 %57, %55
  br label %64

59:                                               ; preds = %37
  %60 = add nsw i32 %55, %50
  %61 = getelementptr inbounds i32, i32* %53, i64 %48
  %62 = load i32, i32* %61, align 4, !tbaa !5
  %63 = sub i32 %60, %62
  br label %64

64:                                               ; preds = %59, %56
  %65 = phi i32 [ %63, %59 ], [ %58, %56 ]
  %66 = getelementptr inbounds i32, i32* %47, i64 %40
  store i32 %65, i32* %66, align 4, !tbaa !5
  %67 = add nuw nsw i64 %38, 1
  %68 = icmp eq i64 %67, %18
  br i1 %68, label %34, label %37, !llvm.loop !14
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !10, !11}
