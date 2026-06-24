; ModuleID = 'benchmark/c_transcoder/HIGHWAY_BILLBOARD_PROBLEM/HIGHWAY_BILLBOARD_PROBLEM_processed.c'
source_filename = "benchmark/c_transcoder/HIGHWAY_BILLBOARD_PROBLEM/HIGHWAY_BILLBOARD_PROBLEM_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32* nocapture noundef readonly %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = add nsw i32 %0, 1
  %7 = zext i32 %6 to i64
  %8 = alloca i32, i64 %7, align 16
  %9 = bitcast i32* %8 to i8*
  %10 = shl nuw nsw i64 %7, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %9, i8 0, i64 %10, i1 false)
  %11 = icmp slt i32 %0, 1
  br i1 %11, label %17, label %12

12:                                               ; preds = %5
  %13 = xor i32 %4, -1
  %14 = sext i32 %4 to i64
  %15 = add i32 %0, 1
  %16 = zext i32 %15 to i64
  br label %21

17:                                               ; preds = %66, %5
  %18 = sext i32 %0 to i64
  %19 = getelementptr inbounds i32, i32* %8, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  ret i32 %20

21:                                               ; preds = %12, %66
  %22 = phi i64 [ 1, %12 ], [ %68, %66 ]
  %23 = phi i32 [ 0, %12 ], [ %67, %66 ]
  %24 = icmp slt i32 %23, %3
  br i1 %24, label %25, label %61

25:                                               ; preds = %21
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds i32, i32* %1, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = zext i32 %28 to i64
  %30 = icmp eq i64 %22, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  %32 = add nsw i64 %22, -1
  %33 = getelementptr inbounds i32, i32* %8, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = getelementptr inbounds i32, i32* %8, i64 %22
  store i32 %34, i32* %35, align 4, !tbaa !5
  br label %66

36:                                               ; preds = %25
  %37 = icmp sgt i64 %22, %14
  br i1 %37, label %43, label %38

38:                                               ; preds = %36
  %39 = add nsw i64 %22, -1
  %40 = getelementptr inbounds i32, i32* %8, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = getelementptr inbounds i32, i32* %2, i64 %26
  br label %54

43:                                               ; preds = %36
  %44 = trunc i64 %22 to i32
  %45 = add i32 %44, %13
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %8, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !5
  %49 = getelementptr inbounds i32, i32* %2, i64 %26
  %50 = load i32, i32* %49, align 4, !tbaa !5
  %51 = add nsw i32 %50, %48
  %52 = add nsw i64 %22, -1
  %53 = getelementptr inbounds i32, i32* %8, i64 %52
  br label %54

54:                                               ; preds = %43, %38
  %55 = phi i32* [ %53, %43 ], [ %42, %38 ]
  %56 = phi i32 [ %51, %43 ], [ %41, %38 ]
  %57 = load i32, i32* %55, align 4, !tbaa !5
  %58 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %56, i32 noundef %57) #3
  %59 = getelementptr inbounds i32, i32* %8, i64 %22
  store i32 %58, i32* %59, align 4, !tbaa !5
  %60 = add nsw i32 %23, 1
  br label %66

61:                                               ; preds = %21
  %62 = add nsw i64 %22, -1
  %63 = getelementptr inbounds i32, i32* %8, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !5
  %65 = getelementptr inbounds i32, i32* %8, i64 %22
  store i32 %64, i32* %65, align 4, !tbaa !5
  br label %66

66:                                               ; preds = %61, %54, %31
  %67 = phi i32 [ %23, %31 ], [ %60, %54 ], [ %23, %61 ]
  %68 = add nuw nsw i64 %22, 1
  %69 = icmp eq i64 %68, %16
  br i1 %69, label %17, label %21, !llvm.loop !9
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
