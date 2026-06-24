; ModuleID = 'benchmark/c_transcoder/HOW_TO_PRINT_MAXIMUM_NUMBER_OF_A_USING_GIVEN_FOUR_KEYS/HOW_TO_PRINT_MAXIMUM_NUMBER_OF_A_USING_GIVEN_FOUR_KEYS_processed.c'
source_filename = "benchmark/c_transcoder/HOW_TO_PRINT_MAXIMUM_NUMBER_OF_A_USING_GIVEN_FOUR_KEYS/HOW_TO_PRINT_MAXIMUM_NUMBER_OF_A_USING_GIVEN_FOUR_KEYS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 7
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = zext i32 %0 to i64
  %5 = call i8* @llvm.stacksave()
  %6 = alloca i32, i64 %4, align 16
  br label %12

7:                                                ; preds = %12
  %8 = icmp slt i32 %0, 7
  br i1 %8, label %39, label %9

9:                                                ; preds = %7
  %10 = add i32 %0, 1
  %11 = zext i32 %10 to i64
  br label %19

12:                                               ; preds = %3, %12
  %13 = phi i64 [ 1, %3 ], [ %17, %12 ]
  %14 = add nsw i64 %13, -1
  %15 = getelementptr inbounds i32, i32* %6, i64 %14
  %16 = trunc i64 %13 to i32
  store i32 %16, i32* %15, align 4, !tbaa !5
  %17 = add nuw nsw i64 %13, 1
  %18 = icmp eq i64 %17, 7
  br i1 %18, label %7, label %12, !llvm.loop !9

19:                                               ; preds = %9, %19
  %20 = phi i64 [ 7, %9 ], [ %37, %19 ]
  %21 = add nsw i64 %20, -4
  %22 = getelementptr inbounds i32, i32* %6, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = shl nsw i32 %23, 1
  %25 = add nsw i64 %20, -5
  %26 = getelementptr inbounds i32, i32* %6, i64 %25
  %27 = load i32, i32* %26, align 4, !tbaa !5
  %28 = mul nsw i32 %27, 3
  %29 = add nsw i64 %20, -6
  %30 = getelementptr inbounds i32, i32* %6, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !5
  %32 = shl nsw i32 %31, 2
  %33 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %28, i32 noundef %32) #3
  %34 = call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %24, i32 noundef %33) #3
  %35 = add nsw i64 %20, -1
  %36 = getelementptr inbounds i32, i32* %6, i64 %35
  store i32 %34, i32* %36, align 4, !tbaa !5
  %37 = add nuw nsw i64 %20, 1
  %38 = icmp eq i64 %37, %11
  br i1 %38, label %39, label %19, !llvm.loop !12

39:                                               ; preds = %19, %7
  %40 = add nsw i32 %0, -1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %6, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !5
  call void @llvm.stackrestore(i8* %5)
  br label %44

44:                                               ; preds = %1, %39
  %45 = phi i32 [ %43, %39 ], [ %0, %1 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

declare i32 @max(...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
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
!12 = distinct !{!12, !10, !11}
