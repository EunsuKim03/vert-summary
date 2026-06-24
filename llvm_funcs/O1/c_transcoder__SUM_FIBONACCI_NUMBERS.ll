; ModuleID = 'benchmark/c_transcoder/SUM_FIBONACCI_NUMBERS/SUM_FIBONACCI_NUMBERS_processed.c'
source_filename = "benchmark/c_transcoder/SUM_FIBONACCI_NUMBERS/SUM_FIBONACCI_NUMBERS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  %4 = add nsw i32 %0, 1
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  %7 = alloca i32, i64 %5, align 16
  store i32 0, i32* %7, align 16, !tbaa !5
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 1, i32* %8, align 4, !tbaa !5
  %9 = icmp eq i32 %0, 1
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = add i32 %0, 1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %7, i64 1
  %14 = load i32, i32* %13, align 4
  br label %17

15:                                               ; preds = %17, %3
  %16 = phi i32 [ 1, %3 ], [ %26, %17 ]
  call void @llvm.stackrestore(i8* %6)
  br label %29

17:                                               ; preds = %10, %17
  %18 = phi i32 [ %14, %10 ], [ %24, %17 ]
  %19 = phi i64 [ 2, %10 ], [ %27, %17 ]
  %20 = phi i32 [ 1, %10 ], [ %26, %17 ]
  %21 = add nsw i64 %19, -2
  %22 = getelementptr inbounds i32, i32* %7, i64 %21
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = add nsw i32 %23, %18
  %25 = getelementptr inbounds i32, i32* %7, i64 %19
  store i32 %24, i32* %25, align 4, !tbaa !5
  %26 = add nsw i32 %24, %20
  %27 = add nuw nsw i64 %19, 1
  %28 = icmp eq i64 %27, %12
  br i1 %28, label %15, label %17, !llvm.loop !9

29:                                               ; preds = %1, %15
  %30 = phi i32 [ %16, %15 ], [ 0, %1 ]
  ret i32 %30
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }

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
