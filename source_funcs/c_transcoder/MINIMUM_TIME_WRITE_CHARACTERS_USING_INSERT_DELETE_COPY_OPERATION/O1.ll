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
  %7 = add nsw i32 %0, 1
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  %10 = alloca i32, i64 %8, align 16
  %11 = bitcast i32* %10 to i8*
  %12 = shl nuw nsw i64 %8, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 %12, i1 false)
  %13 = icmp slt i32 %0, 1
  br i1 %13, label %18, label %14

14:                                               ; preds = %6
  %15 = add i32 %3, %2
  %16 = add i32 %0, 1
  %17 = zext i32 %16 to i64
  br label %22

18:                                               ; preds = %41, %6
  %19 = sext i32 %0 to i64
  %20 = getelementptr inbounds i32, i32* %10, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !5
  call void @llvm.stackrestore(i8* %9)
  br label %49

22:                                               ; preds = %14, %41
  %23 = phi i64 [ 1, %14 ], [ %47, %41 ]
  %24 = and i64 %23, 1
  %25 = icmp eq i64 %24, 0
  %26 = add nsw i64 %23, -1
  %27 = getelementptr inbounds i32, i32* %10, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = add nsw i32 %28, %1
  br i1 %25, label %30, label %35

30:                                               ; preds = %22
  %31 = lshr i64 %23, 1
  %32 = and i64 %31, 2147483647
  %33 = getelementptr inbounds i32, i32* %10, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !5
  br label %41

35:                                               ; preds = %22
  %36 = add nuw i64 %23, 1
  %37 = lshr i64 %36, 1
  %38 = and i64 %37, 2147483647
  %39 = getelementptr inbounds i32, i32* %10, i64 %38
  %40 = load i32, i32* %39, align 4, !tbaa !5
  br label %41

41:                                               ; preds = %30, %35
  %42 = phi i32 [ %3, %30 ], [ %40, %35 ]
  %43 = phi i32 [ %34, %30 ], [ %15, %35 ]
  %44 = add i32 %43, %42
  %45 = call i32 (i32, i32, ...) bitcast (i32 (...)* @min to i32 (i32, i32, ...)*)(i32 noundef %29, i32 noundef %44) #4
  %46 = getelementptr inbounds i32, i32* %10, i64 %23
  store i32 %45, i32* %46, align 4, !tbaa !5
  %47 = add nuw nsw i64 %23, 1
  %48 = icmp eq i64 %47, %17
  br i1 %48, label %18, label %22, !llvm.loop !9

49:                                               ; preds = %4, %18, %5
  %50 = phi i32 [ %1, %5 ], [ %21, %18 ], [ %0, %4 ]
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
