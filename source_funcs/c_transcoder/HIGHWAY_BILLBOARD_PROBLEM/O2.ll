; ModuleID = 'benchmark/c_transcoder/HIGHWAY_BILLBOARD_PROBLEM/HIGHWAY_BILLBOARD_PROBLEM_processed.c'
source_filename = "benchmark/c_transcoder/HIGHWAY_BILLBOARD_PROBLEM/HIGHWAY_BILLBOARD_PROBLEM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = add i32 %0, 1
  %7 = zext i32 %6 to i64
  %8 = alloca i32, i64 %7, align 16
  %9 = bitcast i32* %8 to i8*
  %10 = shl nuw nsw i64 %7, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)
  %11 = icmp slt i32 %0, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = xor i32 %4, -1
  %14 = sext i32 %4 to i64
  br label %19

15:                                               ; preds = %64, %5
  %16 = sext i32 %0 to i64
  %17 = getelementptr inbounds i32, i32* %8, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !5
  ret i32 %18

19:                                               ; preds = %12, %64
  %20 = phi i64 [ 1, %12 ], [ %66, %64 ]
  %21 = phi i32 [ 0, %12 ], [ %65, %64 ]
  %22 = icmp slt i32 %21, %3
  br i1 %22, label %23, label %59

23:                                               ; preds = %19
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds i32, i32* %1, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = zext i32 %26 to i64
  %28 = icmp eq i64 %20, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = add nsw i64 %20, -1
  %31 = getelementptr inbounds i32, i32* %8, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = getelementptr inbounds i32, i32* %8, i64 %20
  store i32 %32, i32* %33, align 4, !tbaa !5
  br label %64

34:                                               ; preds = %23
  %35 = icmp sgt i64 %20, %14
  br i1 %35, label %41, label %36

36:                                               ; preds = %34
  %37 = add nsw i64 %20, -1
  %38 = getelementptr inbounds i32, i32* %8, i64 %37
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = getelementptr inbounds i32, i32* %2, i64 %24
  br label %52

41:                                               ; preds = %34
  %42 = trunc i64 %20 to i32
  %43 = add i32 %42, %13
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %8, i64 %44
  %46 = load i32, i32* %45, align 4, !tbaa !5
  %47 = getelementptr inbounds i32, i32* %2, i64 %24
  %48 = load i32, i32* %47, align 4, !tbaa !5
  %49 = add nsw i32 %48, %46
  %50 = add nsw i64 %20, -1
  %51 = getelementptr inbounds i32, i32* %8, i64 %50
  br label %52

52:                                               ; preds = %41, %36
  %53 = phi i32* [ %51, %41 ], [ %40, %36 ]
  %54 = phi i32 [ %49, %41 ], [ %39, %36 ]
  %55 = load i32, i32* %53, align 4, !tbaa !5
  %56 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %54, i32 noundef %55) #3
  %57 = getelementptr inbounds i32, i32* %8, i64 %20
  store i32 %56, i32* %57, align 4
  %58 = add nsw i32 %21, 1
  br label %64

59:                                               ; preds = %19
  %60 = add nsw i64 %20, -1
  %61 = getelementptr inbounds i32, i32* %8, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !5
  %63 = getelementptr inbounds i32, i32* %8, i64 %20
  store i32 %62, i32* %63, align 4, !tbaa !5
  br label %64

64:                                               ; preds = %59, %52, %29
  %65 = phi i32 [ %21, %29 ], [ %58, %52 ], [ %21, %59 ]
  %66 = add nuw nsw i64 %20, 1
  %67 = icmp eq i64 %66, %7
  br i1 %67, label %15, label %19, !llvm.loop !9
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare i32 @max(...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
