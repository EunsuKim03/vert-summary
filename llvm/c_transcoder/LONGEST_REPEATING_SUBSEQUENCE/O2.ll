; ModuleID = 'benchmark/c_transcoder/LONGEST_REPEATING_SUBSEQUENCE/LONGEST_REPEATING_SUBSEQUENCE_processed.c'
source_filename = "benchmark/c_transcoder/LONGEST_REPEATING_SUBSEQUENCE/LONGEST_REPEATING_SUBSEQUENCE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = add i64 %2, 1
  %5 = and i64 %4, 4294967295
  %6 = mul nuw i64 %5, %5
  %7 = alloca i32, i64 %6, align 16
  %8 = icmp slt i32 %3, 0
  br i1 %8, label %80, label %9

9:                                                ; preds = %1
  %10 = shl nuw nsw i64 %5, 2
  %11 = add i64 %2, 1
  %12 = and i64 %11, 4294967295
  %13 = add nsw i64 %12, -1
  %14 = and i64 %11, 7
  %15 = icmp ult i64 %13, 7
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = sub nsw i64 %12, %14
  br label %35

18:                                               ; preds = %35, %9
  %19 = phi i64 [ 0, %9 ], [ %69, %35 ]
  %20 = icmp eq i64 %14, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ %27, %21 ], [ %19, %18 ]
  %23 = phi i64 [ %28, %21 ], [ 0, %18 ]
  %24 = mul nuw nsw i64 %5, %22
  %25 = getelementptr i32, i32* %7, i64 %24
  %26 = bitcast i32* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 %10, i1 false), !tbaa !5
  %27 = add nuw nsw i64 %22, 1
  %28 = add i64 %23, 1
  %29 = icmp eq i64 %28, %14
  br i1 %29, label %30, label %21, !llvm.loop !9

30:                                               ; preds = %21, %18
  %31 = icmp slt i32 %3, 1
  br i1 %31, label %80, label %32

32:                                               ; preds = %30
  %33 = add i64 %2, 1
  %34 = and i64 %33, 4294967295
  br label %72

35:                                               ; preds = %35, %16
  %36 = phi i64 [ 0, %16 ], [ %69, %35 ]
  %37 = phi i64 [ 0, %16 ], [ %70, %35 ]
  %38 = mul nuw nsw i64 %5, %36
  %39 = getelementptr i32, i32* %7, i64 %38
  %40 = bitcast i32* %39 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %40, i8 0, i64 %10, i1 false), !tbaa !5
  %41 = or i64 %36, 1
  %42 = mul nuw nsw i64 %5, %41
  %43 = getelementptr i32, i32* %7, i64 %42
  %44 = bitcast i32* %43 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %44, i8 0, i64 %10, i1 false), !tbaa !5
  %45 = or i64 %36, 2
  %46 = mul nuw nsw i64 %5, %45
  %47 = getelementptr i32, i32* %7, i64 %46
  %48 = bitcast i32* %47 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %48, i8 0, i64 %10, i1 false), !tbaa !5
  %49 = or i64 %36, 3
  %50 = mul nuw nsw i64 %5, %49
  %51 = getelementptr i32, i32* %7, i64 %50
  %52 = bitcast i32* %51 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %52, i8 0, i64 %10, i1 false), !tbaa !5
  %53 = or i64 %36, 4
  %54 = mul nuw nsw i64 %5, %53
  %55 = getelementptr i32, i32* %7, i64 %54
  %56 = bitcast i32* %55 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %56, i8 0, i64 %10, i1 false), !tbaa !5
  %57 = or i64 %36, 5
  %58 = mul nuw nsw i64 %5, %57
  %59 = getelementptr i32, i32* %7, i64 %58
  %60 = bitcast i32* %59 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %60, i8 0, i64 %10, i1 false), !tbaa !5
  %61 = or i64 %36, 6
  %62 = mul nuw nsw i64 %5, %61
  %63 = getelementptr i32, i32* %7, i64 %62
  %64 = bitcast i32* %63 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %64, i8 0, i64 %10, i1 false), !tbaa !5
  %65 = or i64 %36, 7
  %66 = mul nuw nsw i64 %5, %65
  %67 = getelementptr i32, i32* %7, i64 %66
  %68 = bitcast i32* %67 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %68, i8 0, i64 %10, i1 false), !tbaa !5
  %69 = add nuw nsw i64 %36, 8
  %70 = add i64 %37, 8
  %71 = icmp eq i64 %70, %17
  br i1 %71, label %18, label %35, !llvm.loop !11

72:                                               ; preds = %87, %32
  %73 = phi i64 [ 1, %32 ], [ %88, %87 ]
  %74 = add nsw i64 %73, -1
  %75 = getelementptr inbounds i8, i8* %0, i64 %74
  %76 = mul nuw nsw i64 %5, %74
  %77 = getelementptr inbounds i32, i32* %7, i64 %76
  %78 = mul nuw nsw i64 %5, %73
  %79 = getelementptr inbounds i32, i32* %7, i64 %78
  br label %90

80:                                               ; preds = %87, %1, %30
  %81 = shl i64 %2, 32
  %82 = ashr exact i64 %81, 32
  %83 = mul nsw i64 %82, %5
  %84 = getelementptr inbounds i32, i32* %7, i64 %83
  %85 = getelementptr inbounds i32, i32* %84, i64 %82
  %86 = load i32, i32* %85, align 4, !tbaa !5
  ret i32 %86

87:                                               ; preds = %109
  %88 = add nuw nsw i64 %73, 1
  %89 = icmp eq i64 %88, %34
  br i1 %89, label %80, label %72, !llvm.loop !13

90:                                               ; preds = %72, %109
  %91 = phi i64 [ 1, %72 ], [ %112, %109 ]
  %92 = load i8, i8* %75, align 1, !tbaa !14
  %93 = add nsw i64 %91, -1
  %94 = getelementptr inbounds i8, i8* %0, i64 %93
  %95 = load i8, i8* %94, align 1, !tbaa !14
  %96 = icmp ne i8 %92, %95
  %97 = icmp eq i64 %73, %91
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %90
  %100 = getelementptr inbounds i32, i32* %77, i64 %93
  %101 = load i32, i32* %100, align 4, !tbaa !5
  %102 = add nsw i32 %101, 1
  br label %109

103:                                              ; preds = %90
  %104 = getelementptr inbounds i32, i32* %79, i64 %93
  %105 = load i32, i32* %104, align 4, !tbaa !5
  %106 = getelementptr inbounds i32, i32* %77, i64 %91
  %107 = load i32, i32* %106, align 4, !tbaa !5
  %108 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %105, i32 noundef %107) #4
  br label %109

109:                                              ; preds = %99, %103
  %110 = phi i32 [ %102, %99 ], [ %108, %103 ]
  %111 = getelementptr inbounds i32, i32* %79, i64 %91
  store i32 %110, i32* %111, align 4, !tbaa !5
  %112 = add nuw nsw i64 %91, 1
  %113 = icmp eq i64 %112, %34
  br i1 %113, label %87, label %90, !llvm.loop !15
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

declare i32 @max(...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !12}
