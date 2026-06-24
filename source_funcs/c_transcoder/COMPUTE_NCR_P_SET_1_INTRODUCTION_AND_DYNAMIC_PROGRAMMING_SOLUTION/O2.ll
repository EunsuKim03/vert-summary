; ModuleID = 'benchmark/c_transcoder/COMPUTE_NCR_P_SET_1_INTRODUCTION_AND_DYNAMIC_PROGRAMMING_SOLUTION/COMPUTE_NCR_P_SET_1_INTRODUCTION_AND_DYNAMIC_PROGRAMMING_SOLUTION_processed.c'
source_filename = "benchmark/c_transcoder/COMPUTE_NCR_P_SET_1_INTRODUCTION_AND_DYNAMIC_PROGRAMMING_SOLUTION/COMPUTE_NCR_P_SET_1_INTRODUCTION_AND_DYNAMIC_PROGRAMMING_SOLUTION_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add nsw i32 %1, 1
  %5 = zext i32 %4 to i64
  %6 = alloca i32, i64 %5, align 16
  %7 = bitcast i32* %6 to i8*
  %8 = shl nuw nsw i64 %5, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 %8, i1 false)
  store i32 1, i32* %6, align 16, !tbaa !5
  %9 = icmp slt i32 %0, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %34, %3
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds i32, i32* %6, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !5
  ret i32 %13

14:                                               ; preds = %3, %34
  %15 = phi i32 [ %35, %34 ], [ 1, %3 ]
  %16 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %15, i32 noundef %1) #3
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = zext i32 %16 to i64
  %20 = and i64 %19, 1
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds i32, i32* %6, i64 %19
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = add nsw i64 %19, -1
  %26 = and i64 %25, 4294967295
  %27 = getelementptr inbounds i32, i32* %6, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = add nsw i32 %28, %24
  %30 = srem i32 %29, %2
  store i32 %30, i32* %23, align 4, !tbaa !5
  br label %31

31:                                               ; preds = %22, %18
  %32 = phi i64 [ %19, %18 ], [ %25, %22 ]
  %33 = icmp eq i32 %16, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %37, %14
  %35 = add nuw i32 %15, 1
  %36 = icmp eq i32 %15, %0
  br i1 %36, label %10, label %14, !llvm.loop !9

37:                                               ; preds = %31, %37
  %38 = phi i64 [ %49, %37 ], [ %32, %31 ]
  %39 = getelementptr inbounds i32, i32* %6, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = add nsw i64 %38, -1
  %42 = and i64 %41, 4294967295
  %43 = getelementptr inbounds i32, i32* %6, i64 %42
  %44 = load i32, i32* %43, align 4, !tbaa !5
  %45 = add nsw i32 %44, %40
  %46 = srem i32 %45, %2
  store i32 %46, i32* %39, align 4, !tbaa !5
  %47 = getelementptr inbounds i32, i32* %6, i64 %41
  %48 = load i32, i32* %47, align 4, !tbaa !5
  %49 = add nsw i64 %38, -2
  %50 = and i64 %49, 4294967295
  %51 = getelementptr inbounds i32, i32* %6, i64 %50
  %52 = load i32, i32* %51, align 4, !tbaa !5
  %53 = add nsw i32 %52, %48
  %54 = srem i32 %53, %2
  store i32 %54, i32* %47, align 4, !tbaa !5
  %55 = icmp ugt i64 %41, 1
  br i1 %55, label %37, label %34, !llvm.loop !11
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare i32 @min(...) local_unnamed_addr #2

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
!11 = distinct !{!11, !10}
