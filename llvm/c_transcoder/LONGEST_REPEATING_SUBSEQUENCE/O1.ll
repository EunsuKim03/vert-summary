; ModuleID = 'benchmark/c_transcoder/LONGEST_REPEATING_SUBSEQUENCE/LONGEST_REPEATING_SUBSEQUENCE_processed.c'
source_filename = "benchmark/c_transcoder/LONGEST_REPEATING_SUBSEQUENCE/LONGEST_REPEATING_SUBSEQUENCE_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = add i64 %2, 1
  %5 = and i64 %4, 4294967295
  %6 = mul nuw i64 %5, %5
  %7 = alloca i32, i64 %6, align 16
  %8 = icmp slt i32 %3, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = shl nuw nsw i64 %5, 2
  %11 = add i64 %2, 1
  %12 = and i64 %11, 4294967295
  br label %13

13:                                               ; preds = %9, %13
  %14 = phi i64 [ 0, %9 ], [ %18, %13 ]
  %15 = mul nuw nsw i64 %5, %14
  %16 = getelementptr i32, i32* %7, i64 %15
  %17 = bitcast i32* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 %10, i1 false), !tbaa !5
  %18 = add nuw nsw i64 %14, 1
  %19 = icmp eq i64 %18, %12
  br i1 %19, label %20, label %13, !llvm.loop !9

20:                                               ; preds = %13, %1
  %21 = icmp slt i32 %3, 1
  br i1 %21, label %37, label %22

22:                                               ; preds = %20
  %23 = add i32 %3, 1
  %24 = zext i32 %23 to i64
  %25 = zext i32 %23 to i64
  br label %26

26:                                               ; preds = %22, %44
  %27 = phi i64 [ 1, %22 ], [ %45, %44 ]
  %28 = add nsw i64 %27, -1
  %29 = getelementptr inbounds i8, i8* %0, i64 %28
  %30 = mul nuw nsw i64 %5, %28
  %31 = getelementptr inbounds i32, i32* %7, i64 %30
  %32 = mul nuw nsw i64 %5, %27
  %33 = mul nuw nsw i64 %5, %27
  %34 = getelementptr inbounds i32, i32* %7, i64 %33
  %35 = mul nuw nsw i64 %5, %28
  %36 = getelementptr inbounds i32, i32* %7, i64 %35
  br label %47

37:                                               ; preds = %44, %20
  %38 = shl i64 %2, 32
  %39 = ashr exact i64 %38, 32
  %40 = mul nsw i64 %39, %5
  %41 = getelementptr inbounds i32, i32* %7, i64 %40
  %42 = getelementptr inbounds i32, i32* %41, i64 %39
  %43 = load i32, i32* %42, align 4, !tbaa !5
  ret i32 %43

44:                                               ; preds = %66
  %45 = add nuw nsw i64 %27, 1
  %46 = icmp eq i64 %45, %24
  br i1 %46, label %37, label %26, !llvm.loop !12

47:                                               ; preds = %26, %66
  %48 = phi i64 [ 1, %26 ], [ %71, %66 ]
  %49 = load i8, i8* %29, align 1, !tbaa !13
  %50 = add nsw i64 %48, -1
  %51 = getelementptr inbounds i8, i8* %0, i64 %50
  %52 = load i8, i8* %51, align 1, !tbaa !13
  %53 = icmp ne i8 %49, %52
  %54 = icmp eq i64 %27, %48
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds i32, i32* %31, i64 %50
  %58 = load i32, i32* %57, align 4, !tbaa !5
  %59 = add nsw i32 %58, 1
  br label %66

60:                                               ; preds = %47
  %61 = getelementptr inbounds i32, i32* %34, i64 %50
  %62 = load i32, i32* %61, align 4, !tbaa !5
  %63 = getelementptr inbounds i32, i32* %36, i64 %48
  %64 = load i32, i32* %63, align 4, !tbaa !5
  %65 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %62, i32 noundef %64) #4
  br label %66

66:                                               ; preds = %56, %60
  %67 = phi i64 [ %32, %56 ], [ %33, %60 ]
  %68 = phi i32 [ %59, %56 ], [ %65, %60 ]
  %69 = getelementptr inbounds i32, i32* %7, i64 %67
  %70 = getelementptr inbounds i32, i32* %69, i64 %48
  store i32 %68, i32* %70, align 4, !tbaa !5
  %71 = add nuw nsw i64 %48, 1
  %72 = icmp eq i64 %71, %25
  br i1 %72, label %44, label %47, !llvm.loop !14
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = !{!7, !7, i64 0}
!14 = distinct !{!14, !10, !11}
