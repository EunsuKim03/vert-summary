; ModuleID = 'benchmark/c_transcoder/GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1/GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1_processed.c'
source_filename = "benchmark/c_transcoder/GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1/GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = add i64 %2, 1
  %5 = and i64 %4, 4294967295
  %6 = alloca [10 x i32], i64 %5, align 16
  %7 = bitcast [10 x i32]* %6 to i8*
  %8 = mul nuw nsw i64 %5, 40
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %7, i8 0, i64 %8, i1 false)
  %9 = alloca i32, i64 %5, align 16
  %10 = icmp slt i32 %3, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = add i64 %2, 1
  %13 = and i64 %12, 4294967295
  br label %19

14:                                               ; preds = %19, %1
  %15 = icmp slt i32 %3, 1
  br i1 %15, label %29, label %16

16:                                               ; preds = %14
  %17 = add i64 %2, 1
  %18 = and i64 %17, 4294967295
  br label %39

19:                                               ; preds = %11, %19
  %20 = phi i64 [ 1, %11 ], [ %27, %19 ]
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds i8, i8* %0, i64 %21
  %23 = load i8, i8* %22, align 1, !tbaa !5
  %24 = sext i8 %23 to i32
  %25 = add nsw i32 %24, -48
  %26 = getelementptr inbounds i32, i32* %9, i64 %20
  store i32 %25, i32* %26, align 4, !tbaa !8
  %27 = add nuw nsw i64 %20, 1
  %28 = icmp eq i64 %27, %13
  br i1 %28, label %14, label %19, !llvm.loop !10

29:                                               ; preds = %47, %14
  %30 = icmp slt i32 %3, 1
  br i1 %30, label %80, label %31

31:                                               ; preds = %29
  %32 = shl i64 %2, 32
  %33 = ashr exact i64 %32, 32
  %34 = add i64 %2, 1
  %35 = and i64 %34, 4294967295
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 1, i64 0
  %37 = load i32, i32* %36, align 8, !tbaa !8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %80, label %70

39:                                               ; preds = %16, %47
  %40 = phi i64 [ 1, %16 ], [ %48, %47 ]
  %41 = getelementptr inbounds i32, i32* %9, i64 %40
  %42 = load i32, i32* %41, align 4, !tbaa !8
  %43 = srem i32 %42, 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %40, i64 %44
  store i32 1, i32* %45, align 4, !tbaa !8
  %46 = add nsw i64 %40, -1
  br label %50

47:                                               ; preds = %50
  %48 = add nuw nsw i64 %40, 1
  %49 = icmp eq i64 %48, %18
  br i1 %49, label %29, label %39, !llvm.loop !13

50:                                               ; preds = %39, %50
  %51 = phi i64 [ 0, %39 ], [ %68, %50 ]
  %52 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %46, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !8
  %54 = trunc i64 %51 to i32
  %55 = mul i32 %54, 10
  %56 = add i32 %55, %42
  %57 = srem i32 %56, 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %40, i64 %58
  %60 = load i32, i32* %59, align 4, !tbaa !8
  %61 = icmp sgt i32 %53, %60
  %62 = select i1 %61, i32 %53, i32 %60
  store i32 %62, i32* %59, align 4
  %63 = load i32, i32* %52, align 4, !tbaa !8
  %64 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %40, i64 %51
  %65 = load i32, i32* %64, align 4, !tbaa !8
  %66 = icmp sgt i32 %63, %65
  %67 = select i1 %66, i32 %63, i32 %65
  store i32 %67, i32* %64, align 4
  %68 = add nuw nsw i64 %51, 1
  %69 = icmp eq i64 %68, 8
  br i1 %69, label %47, label %50, !llvm.loop !14

70:                                               ; preds = %31, %74
  %71 = phi i64 [ %72, %74 ], [ 1, %31 ]
  %72 = add nuw nsw i64 %71, 1
  %73 = icmp eq i64 %72, %35
  br i1 %73, label %78, label %74, !llvm.loop !15

74:                                               ; preds = %70
  %75 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %72, i64 0
  %76 = load i32, i32* %75, align 8, !tbaa !8
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %70, !llvm.loop !15

78:                                               ; preds = %70, %74
  %79 = icmp sge i64 %71, %33
  br label %80

80:                                               ; preds = %78, %31, %29
  %81 = phi i1 [ %30, %29 ], [ %30, %31 ], [ %79, %78 ]
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  ret i32 %83
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
