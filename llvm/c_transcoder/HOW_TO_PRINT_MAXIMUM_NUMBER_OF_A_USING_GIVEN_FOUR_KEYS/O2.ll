; ModuleID = 'benchmark/c_transcoder/HOW_TO_PRINT_MAXIMUM_NUMBER_OF_A_USING_GIVEN_FOUR_KEYS/HOW_TO_PRINT_MAXIMUM_NUMBER_OF_A_USING_GIVEN_FOUR_KEYS_processed.c'
source_filename = "benchmark/c_transcoder/HOW_TO_PRINT_MAXIMUM_NUMBER_OF_A_USING_GIVEN_FOUR_KEYS/HOW_TO_PRINT_MAXIMUM_NUMBER_OF_A_USING_GIVEN_FOUR_KEYS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 7
  br i1 %2, label %37, label %3

3:                                                ; preds = %1
  %4 = zext i32 %0 to i64
  %5 = tail call i8* @llvm.stacksave()
  %6 = alloca i32, i64 %4, align 16
  %7 = bitcast i32* %6 to <4 x i32>*
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, <4 x i32>* %7, align 16, !tbaa !5
  %8 = getelementptr inbounds i32, i32* %6, i64 4
  store i32 5, i32* %8, align 16, !tbaa !5
  %9 = getelementptr inbounds i32, i32* %6, i64 5
  store i32 6, i32* %9, align 4, !tbaa !5
  %10 = add nuw i32 %0, 1
  %11 = zext i32 %10 to i64
  br label %12

12:                                               ; preds = %28, %3
  %13 = phi i32 [ 2, %3 ], [ %31, %28 ]
  %14 = phi i32 [ 3, %3 ], [ %18, %28 ]
  %15 = phi i64 [ 7, %3 ], [ %26, %28 ]
  %16 = add nsw i64 %15, -4
  %17 = getelementptr inbounds i32, i32* %6, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = shl nsw i32 %18, 1
  %20 = mul nsw i32 %14, 3
  %21 = shl nsw i32 %13, 2
  %22 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %20, i32 noundef %21) #3
  %23 = tail call i32 (i32, i32, ...) bitcast (i32 (...)* @max to i32 (i32, i32, ...)*)(i32 noundef %19, i32 noundef %22) #3
  %24 = add nsw i64 %15, -1
  %25 = getelementptr inbounds i32, i32* %6, i64 %24
  store i32 %23, i32* %25, align 4, !tbaa !5
  %26 = add nuw nsw i64 %15, 1
  %27 = icmp eq i64 %26, %11
  br i1 %27, label %32, label %28, !llvm.loop !9

28:                                               ; preds = %12
  %29 = add nsw i64 %15, -5
  %30 = getelementptr inbounds i32, i32* %6, i64 %29
  %31 = load i32, i32* %30, align 4, !tbaa !5
  br label %12

32:                                               ; preds = %12
  %33 = add nsw i32 %0, -1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %6, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !5
  tail call void @llvm.stackrestore(i8* %5)
  br label %37

37:                                               ; preds = %1, %32
  %38 = phi i32 [ %36, %32 ], [ %0, %1 ]
  ret i32 %38
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
