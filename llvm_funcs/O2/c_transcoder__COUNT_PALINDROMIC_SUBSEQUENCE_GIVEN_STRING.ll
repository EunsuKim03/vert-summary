; ModuleID = 'benchmark/c_transcoder/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_processed.c'
source_filename = "benchmark/c_transcoder/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING/COUNT_PALINDROMIC_SUBSEQUENCE_GIVEN_STRING_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = add i64 %2, 1
  %5 = and i64 %4, 4294967295
  %6 = mul nuw i64 %5, %5
  %7 = alloca i32, i64 %6, align 16
  %8 = bitcast i32* %7 to i8*
  %9 = shl nuw i64 %6, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 %9, i1 false)
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %59

11:                                               ; preds = %1
  %12 = and i64 %2, 4294967295
  %13 = add nsw i64 %12, -1
  %14 = and i64 %2, 3
  %15 = icmp ult i64 %13, 3
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = sub nsw i64 %12, %14
  br label %36

18:                                               ; preds = %36, %11
  %19 = phi i64 [ 0, %11 ], [ %54, %36 ]
  %20 = icmp eq i64 %14, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ %27, %21 ], [ %19, %18 ]
  %23 = phi i64 [ %28, %21 ], [ 0, %18 ]
  %24 = mul nuw nsw i64 %5, %22
  %25 = getelementptr inbounds i32, i32* %7, i64 %24
  %26 = getelementptr inbounds i32, i32* %25, i64 %22
  store i32 1, i32* %26, align 4, !tbaa !5
  %27 = add nuw nsw i64 %22, 1
  %28 = add i64 %23, 1
  %29 = icmp eq i64 %28, %14
  br i1 %29, label %30, label %21, !llvm.loop !9

30:                                               ; preds = %21, %18
  %31 = icmp slt i32 %3, 2
  br i1 %31, label %59, label %32

32:                                               ; preds = %30
  %33 = add i64 %2, 1
  %34 = and i64 %33, 4294967295
  %35 = and i64 %2, 4294967295
  br label %57

36:                                               ; preds = %36, %16
  %37 = phi i64 [ 0, %16 ], [ %54, %36 ]
  %38 = phi i64 [ 0, %16 ], [ %55, %36 ]
  %39 = mul nuw nsw i64 %5, %37
  %40 = getelementptr inbounds i32, i32* %7, i64 %39
  %41 = getelementptr inbounds i32, i32* %40, i64 %37
  store i32 1, i32* %41, align 16, !tbaa !5
  %42 = or i64 %37, 1
  %43 = mul nuw nsw i64 %5, %42
  %44 = getelementptr inbounds i32, i32* %7, i64 %43
  %45 = getelementptr inbounds i32, i32* %44, i64 %42
  store i32 1, i32* %45, align 4, !tbaa !5
  %46 = or i64 %37, 2
  %47 = mul nuw nsw i64 %5, %46
  %48 = getelementptr inbounds i32, i32* %7, i64 %47
  %49 = getelementptr inbounds i32, i32* %48, i64 %46
  store i32 1, i32* %49, align 8, !tbaa !5
  %50 = or i64 %37, 3
  %51 = mul nuw nsw i64 %5, %50
  %52 = getelementptr inbounds i32, i32* %7, i64 %51
  %53 = getelementptr inbounds i32, i32* %52, i64 %50
  store i32 1, i32* %53, align 4, !tbaa !5
  %54 = add nuw nsw i64 %37, 4
  %55 = add i64 %38, 4
  %56 = icmp eq i64 %55, %17
  br i1 %56, label %18, label %36, !llvm.loop !11

57:                                               ; preds = %65, %32
  %58 = phi i64 [ 2, %32 ], [ %66, %65 ]
  br label %68

59:                                               ; preds = %65, %1, %30
  %60 = shl i64 %2, 32
  %61 = add i64 %60, -4294967296
  %62 = ashr exact i64 %61, 32
  %63 = getelementptr inbounds i32, i32* %7, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !5
  ret i32 %64

65:                                               ; preds = %95
  %66 = add nuw nsw i64 %58, 1
  %67 = icmp eq i64 %66, %34
  br i1 %67, label %59, label %57, !llvm.loop !13

68:                                               ; preds = %57, %95
  %69 = phi i64 [ 0, %57 ], [ %82, %95 ]
  %70 = add nuw nsw i64 %69, %58
  %71 = add nsw i64 %70, -1
  %72 = getelementptr inbounds i8, i8* %0, i64 %69
  %73 = load i8, i8* %72, align 1, !tbaa !14
  %74 = getelementptr inbounds i8, i8* %0, i64 %71
  %75 = load i8, i8* %74, align 1, !tbaa !14
  %76 = icmp eq i8 %73, %75
  %77 = mul nuw nsw i64 %5, %69
  %78 = getelementptr inbounds i32, i32* %7, i64 %77
  %79 = add nsw i64 %70, -2
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4, !tbaa !5
  %82 = add nuw nsw i64 %69, 1
  %83 = mul nuw nsw i64 %5, %82
  %84 = getelementptr inbounds i32, i32* %7, i64 %83
  %85 = getelementptr inbounds i32, i32* %84, i64 %71
  %86 = load i32, i32* %85, align 4, !tbaa !5
  br i1 %76, label %87, label %90

87:                                               ; preds = %68
  %88 = add i32 %81, 1
  %89 = add i32 %88, %86
  br label %95

90:                                               ; preds = %68
  %91 = add nsw i32 %86, %81
  %92 = getelementptr inbounds i32, i32* %84, i64 %79
  %93 = load i32, i32* %92, align 4, !tbaa !5
  %94 = sub i32 %91, %93
  br label %95

95:                                               ; preds = %90, %87
  %96 = phi i32 [ %94, %90 ], [ %89, %87 ]
  %97 = getelementptr inbounds i32, i32* %78, i64 %71
  store i32 %96, i32* %97, align 4, !tbaa !5
  %98 = icmp eq i64 %82, %35
  br i1 %98, label %65, label %68, !llvm.loop !15
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !12}
