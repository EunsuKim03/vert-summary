; ModuleID = 'benchmark/c_transcoder/DOUBLE_FACTORIAL_1/DOUBLE_FACTORIAL_1_processed.c'
source_filename = "benchmark/c_transcoder/DOUBLE_FACTORIAL_1/DOUBLE_FACTORIAL_1_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 2
  br i1 %2, label %80, label %3

3:                                                ; preds = %1
  %4 = add i32 %0, 1
  %5 = call i32 @llvm.umin.i32(i32 %0, i32 3)
  %6 = sub i32 %4, %5
  %7 = lshr i32 %6, 1
  %8 = add nuw i32 %7, 1
  %9 = icmp ult i32 %6, 14
  br i1 %9, label %71, label %10

10:                                               ; preds = %3
  %11 = and i32 %8, -8
  %12 = mul i32 %11, -2
  %13 = add i32 %12, %0
  %14 = insertelement <4 x i32> poison, i32 %0, i64 0
  %15 = shufflevector <4 x i32> %14, <4 x i32> poison, <4 x i32> zeroinitializer
  %16 = add <4 x i32> %15, <i32 0, i32 -2, i32 -4, i32 -6>
  %17 = add i32 %11, -8
  %18 = lshr exact i32 %17, 3
  %19 = add nuw nsw i32 %18, 1
  %20 = and i32 %19, 3
  %21 = icmp ult i32 %17, 24
  br i1 %21, label %47, label %22

22:                                               ; preds = %10
  %23 = and i32 %19, 1073741820
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi <4 x i32> [ %16, %22 ], [ %44, %24 ]
  %26 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %22 ], [ %42, %24 ]
  %27 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %22 ], [ %43, %24 ]
  %28 = phi i32 [ 0, %22 ], [ %45, %24 ]
  %29 = add <4 x i32> %25, <i32 -8, i32 -8, i32 -8, i32 -8>
  %30 = mul <4 x i32> %25, %26
  %31 = mul <4 x i32> %29, %27
  %32 = add <4 x i32> %25, <i32 -16, i32 -16, i32 -16, i32 -16>
  %33 = add <4 x i32> %25, <i32 -24, i32 -24, i32 -24, i32 -24>
  %34 = mul <4 x i32> %32, %30
  %35 = mul <4 x i32> %33, %31
  %36 = add <4 x i32> %25, <i32 -32, i32 -32, i32 -32, i32 -32>
  %37 = add <4 x i32> %25, <i32 -40, i32 -40, i32 -40, i32 -40>
  %38 = mul <4 x i32> %36, %34
  %39 = mul <4 x i32> %37, %35
  %40 = add <4 x i32> %25, <i32 -48, i32 -48, i32 -48, i32 -48>
  %41 = add <4 x i32> %25, <i32 -56, i32 -56, i32 -56, i32 -56>
  %42 = mul <4 x i32> %40, %38
  %43 = mul <4 x i32> %41, %39
  %44 = add <4 x i32> %25, <i32 -64, i32 -64, i32 -64, i32 -64>
  %45 = add i32 %28, 4
  %46 = icmp eq i32 %45, %23
  br i1 %46, label %47, label %24, !llvm.loop !5

47:                                               ; preds = %24, %10
  %48 = phi <4 x i32> [ undef, %10 ], [ %42, %24 ]
  %49 = phi <4 x i32> [ undef, %10 ], [ %43, %24 ]
  %50 = phi <4 x i32> [ %16, %10 ], [ %44, %24 ]
  %51 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %10 ], [ %42, %24 ]
  %52 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %10 ], [ %43, %24 ]
  %53 = icmp eq i32 %20, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %47, %54
  %55 = phi <4 x i32> [ %62, %54 ], [ %50, %47 ]
  %56 = phi <4 x i32> [ %60, %54 ], [ %51, %47 ]
  %57 = phi <4 x i32> [ %61, %54 ], [ %52, %47 ]
  %58 = phi i32 [ %63, %54 ], [ 0, %47 ]
  %59 = add <4 x i32> %55, <i32 -8, i32 -8, i32 -8, i32 -8>
  %60 = mul <4 x i32> %55, %56
  %61 = mul <4 x i32> %59, %57
  %62 = add <4 x i32> %55, <i32 -16, i32 -16, i32 -16, i32 -16>
  %63 = add i32 %58, 1
  %64 = icmp eq i32 %63, %20
  br i1 %64, label %65, label %54, !llvm.loop !8

65:                                               ; preds = %54, %47
  %66 = phi <4 x i32> [ %48, %47 ], [ %60, %54 ]
  %67 = phi <4 x i32> [ %49, %47 ], [ %61, %54 ]
  %68 = mul <4 x i32> %67, %66
  %69 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %68)
  %70 = icmp eq i32 %8, %11
  br i1 %70, label %80, label %71

71:                                               ; preds = %3, %65
  %72 = phi i32 [ %0, %3 ], [ %13, %65 ]
  %73 = phi i32 [ 1, %3 ], [ %69, %65 ]
  br label %74

74:                                               ; preds = %71, %74
  %75 = phi i32 [ %78, %74 ], [ %72, %71 ]
  %76 = phi i32 [ %77, %74 ], [ %73, %71 ]
  %77 = mul nsw i32 %75, %76
  %78 = add nsw i32 %75, -2
  %79 = icmp ult i32 %75, 4
  br i1 %79, label %80, label %74, !llvm.loop !10

80:                                               ; preds = %74, %65, %1
  %81 = phi i32 [ 1, %1 ], [ %69, %65 ], [ %77, %74 ]
  ret i32 %81
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #2

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !6, !11, !7}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
