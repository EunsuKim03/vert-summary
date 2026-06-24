; ModuleID = 'benchmark/c_transcoder/MINIMUM_TIME_WRITE_CHARACTERS_USING_INSERT_DELETE_COPY_OPERATION/MINIMUM_TIME_WRITE_CHARACTERS_USING_INSERT_DELETE_COPY_OPERATION_processed.c'
source_filename = "benchmark/c_transcoder/MINIMUM_TIME_WRITE_CHARACTERS_USING_INSERT_DELETE_COPY_OPERATION/MINIMUM_TIME_WRITE_CHARACTERS_USING_INSERT_DELETE_COPY_OPERATION_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  switch i32 %0, label %6 [
    i32 0, label %49
    i32 1, label %5
  ]

5:                                                ; preds = %4
  br label %49

6:                                                ; preds = %4
  %7 = add i32 %0, 1
  %8 = zext i32 %7 to i64
  %9 = tail call i8* @llvm.stacksave()
  %10 = alloca i32, i64 %8, align 16
  %11 = bitcast i32* %10 to i8*
  %12 = shl nuw nsw i64 %8, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 %12, i1 false)
  %13 = icmp slt i32 %0, 1
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = add i32 %3, %2
  br label %20

16:                                               ; preds = %44, %6
  %17 = sext i32 %0 to i64
  %18 = getelementptr inbounds i32, i32* %10, i64 %17
  %19 = load i32, i32* %18, align 4, !tbaa !5
  tail call void @llvm.stackrestore(i8* %9)
  br label %49

20:                                               ; preds = %14, %44
  %21 = phi i64 [ 1, %14 ], [ %45, %44 ]
  %22 = and i64 %21, 1
  %23 = icmp eq i64 %22, 0
  %24 = add nsw i64 %21, -1
  %25 = getelementptr inbounds i32, i32* %10, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = add nsw i32 %26, %1
  br i1 %23, label %28, label %36

28:                                               ; preds = %20
  %29 = lshr i64 %21, 1
  %30 = and i64 %29, 2147483647
  %31 = getelementptr inbounds i32, i32* %10, i64 %30
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = add nsw i32 %32, %3
  %34 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %27, i32 noundef %33) #4
  %35 = add nuw nsw i64 %21, 1
  br label %44

36:                                               ; preds = %20
  %37 = add nuw nsw i64 %21, 1
  %38 = lshr i64 %37, 1
  %39 = and i64 %38, 2147483647
  %40 = getelementptr inbounds i32, i32* %10, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = add i32 %15, %41
  %43 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %27, i32 noundef %42) #4
  br label %44

44:                                               ; preds = %28, %36
  %45 = phi i64 [ %35, %28 ], [ %37, %36 ]
  %46 = phi i32 [ %34, %28 ], [ %43, %36 ]
  %47 = getelementptr inbounds i32, i32* %10, i64 %21
  store i32 %46, i32* %47, align 4
  %48 = icmp eq i64 %45, %8
  br i1 %48, label %16, label %20, !llvm.loop !9

49:                                               ; preds = %4, %16, %5
  %50 = phi i32 [ %1, %5 ], [ %19, %16 ], [ %0, %4 ]
  ret i32 %50
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @min(...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = !{!"llvm.loop.mustprogress"}
