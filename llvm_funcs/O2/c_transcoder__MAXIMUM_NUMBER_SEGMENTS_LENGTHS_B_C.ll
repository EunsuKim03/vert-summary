; ModuleID = 'benchmark/c_transcoder/MAXIMUM_NUMBER_SEGMENTS_LENGTHS_B_C/MAXIMUM_NUMBER_SEGMENTS_LENGTHS_B_C_processed.c'
source_filename = "benchmark/c_transcoder/MAXIMUM_NUMBER_SEGMENTS_LENGTHS_B_C/MAXIMUM_NUMBER_SEGMENTS_LENGTHS_B_C_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = add nsw i32 %0, 1
  %6 = zext i32 %5 to i64
  %7 = alloca i32, i64 %6, align 16
  %8 = bitcast i32* %7 to i8*
  %9 = shl nuw nsw i64 %6, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 -1, i64 %9, i1 false)
  store i32 0, i32* %7, align 16, !tbaa !5
  %10 = icmp sgt i32 %0, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = sext i32 %0 to i64
  br label %19

13:                                               ; preds = %4
  %14 = sext i32 %1 to i64
  %15 = zext i32 %0 to i64
  %16 = sext i32 %2 to i64
  %17 = sext i32 %3 to i64
  %18 = zext i32 %0 to i64
  br label %23

19:                                               ; preds = %54, %11
  %20 = phi i64 [ %12, %11 ], [ %15, %54 ]
  %21 = getelementptr inbounds i32, i32* %7, i64 %20
  %22 = load i32, i32* %21, align 4, !tbaa !5
  ret i32 %22

23:                                               ; preds = %57, %13
  %24 = phi i32 [ 0, %13 ], [ %59, %57 ]
  %25 = phi i64 [ 0, %13 ], [ %55, %57 ]
  %26 = getelementptr inbounds i32, i32* %7, i64 %25
  %27 = icmp eq i32 %24, -1
  br i1 %27, label %54, label %28

28:                                               ; preds = %23
  %29 = add nsw i64 %25, %14
  %30 = icmp sgt i64 %29, %15
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = add nuw nsw i32 %24, 1
  %33 = getelementptr inbounds i32, i32* %7, i64 %29
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %32, i32 noundef %34) #3
  store i32 %35, i32* %33, align 4, !tbaa !5
  br label %36

36:                                               ; preds = %31, %28
  %37 = add nsw i64 %25, %16
  %38 = icmp sgt i64 %37, %15
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %26, align 4, !tbaa !5
  %41 = add nsw i32 %40, 1
  %42 = getelementptr inbounds i32, i32* %7, i64 %37
  %43 = load i32, i32* %42, align 4, !tbaa !5
  %44 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %41, i32 noundef %43) #3
  store i32 %44, i32* %42, align 4, !tbaa !5
  br label %45

45:                                               ; preds = %39, %36
  %46 = add nsw i64 %25, %17
  %47 = icmp sgt i64 %46, %15
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %26, align 4, !tbaa !5
  %50 = add nsw i32 %49, 1
  %51 = getelementptr inbounds i32, i32* %7, i64 %46
  %52 = load i32, i32* %51, align 4, !tbaa !5
  %53 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %50, i32 noundef %52) #3
  store i32 %53, i32* %51, align 4, !tbaa !5
  br label %54

54:                                               ; preds = %23, %48, %45
  %55 = add nuw nsw i64 %25, 1
  %56 = icmp eq i64 %55, %18
  br i1 %56, label %19, label %57, !llvm.loop !9

57:                                               ; preds = %54
  %58 = getelementptr inbounds i32, i32* %7, i64 %55
  %59 = load i32, i32* %58, align 4, !tbaa !5
  br label %23
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
