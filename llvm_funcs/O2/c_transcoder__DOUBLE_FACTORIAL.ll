; ModuleID = 'benchmark/c_transcoder/DOUBLE_FACTORIAL/DOUBLE_FACTORIAL_processed.c'
source_filename = "benchmark/c_transcoder/DOUBLE_FACTORIAL/DOUBLE_FACTORIAL_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind readnone uwtable
define dso_local i32 @f_gold(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %78, label %3

3:                                                ; preds = %1
  %4 = add i32 %0, -2
  %5 = lshr i32 %4, 1
  %6 = add nuw i32 %5, 1
  %7 = icmp ult i32 %4, 14
  br i1 %7, label %69, label %8

8:                                                ; preds = %3
  %9 = and i32 %6, -8
  %10 = mul i32 %9, -2
  %11 = add i32 %10, %0
  %12 = insertelement <4 x i32> poison, i32 %0, i64 0
  %13 = shufflevector <4 x i32> %12, <4 x i32> poison, <4 x i32> zeroinitializer
  %14 = add <4 x i32> %13, <i32 0, i32 -2, i32 -4, i32 -6>
  %15 = add i32 %9, -8
  %16 = lshr exact i32 %15, 3
  %17 = add nuw nsw i32 %16, 1
  %18 = and i32 %17, 3
  %19 = icmp ult i32 %15, 24
  br i1 %19, label %45, label %20

20:                                               ; preds = %8
  %21 = and i32 %17, 1073741820
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi <4 x i32> [ %14, %20 ], [ %42, %22 ]
  %24 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %20 ], [ %40, %22 ]
  %25 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %20 ], [ %41, %22 ]
  %26 = phi i32 [ 0, %20 ], [ %43, %22 ]
  %27 = add <4 x i32> %23, <i32 -8, i32 -8, i32 -8, i32 -8>
  %28 = mul <4 x i32> %23, %24
  %29 = mul <4 x i32> %27, %25
  %30 = add <4 x i32> %23, <i32 -16, i32 -16, i32 -16, i32 -16>
  %31 = add <4 x i32> %23, <i32 -24, i32 -24, i32 -24, i32 -24>
  %32 = mul <4 x i32> %30, %28
  %33 = mul <4 x i32> %31, %29
  %34 = add <4 x i32> %23, <i32 -32, i32 -32, i32 -32, i32 -32>
  %35 = add <4 x i32> %23, <i32 -40, i32 -40, i32 -40, i32 -40>
  %36 = mul <4 x i32> %34, %32
  %37 = mul <4 x i32> %35, %33
  %38 = add <4 x i32> %23, <i32 -48, i32 -48, i32 -48, i32 -48>
  %39 = add <4 x i32> %23, <i32 -56, i32 -56, i32 -56, i32 -56>
  %40 = mul <4 x i32> %38, %36
  %41 = mul <4 x i32> %39, %37
  %42 = add <4 x i32> %23, <i32 -64, i32 -64, i32 -64, i32 -64>
  %43 = add i32 %26, 4
  %44 = icmp eq i32 %43, %21
  br i1 %44, label %45, label %22, !llvm.loop !5

45:                                               ; preds = %22, %8
  %46 = phi <4 x i32> [ undef, %8 ], [ %40, %22 ]
  %47 = phi <4 x i32> [ undef, %8 ], [ %41, %22 ]
  %48 = phi <4 x i32> [ %14, %8 ], [ %42, %22 ]
  %49 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %8 ], [ %40, %22 ]
  %50 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %8 ], [ %41, %22 ]
  %51 = icmp eq i32 %18, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %45, %52
  %53 = phi <4 x i32> [ %60, %52 ], [ %48, %45 ]
  %54 = phi <4 x i32> [ %58, %52 ], [ %49, %45 ]
  %55 = phi <4 x i32> [ %59, %52 ], [ %50, %45 ]
  %56 = phi i32 [ %61, %52 ], [ 0, %45 ]
  %57 = add <4 x i32> %53, <i32 -8, i32 -8, i32 -8, i32 -8>
  %58 = mul <4 x i32> %53, %54
  %59 = mul <4 x i32> %57, %55
  %60 = add <4 x i32> %53, <i32 -16, i32 -16, i32 -16, i32 -16>
  %61 = add i32 %56, 1
  %62 = icmp eq i32 %61, %18
  br i1 %62, label %63, label %52, !llvm.loop !7

63:                                               ; preds = %52, %45
  %64 = phi <4 x i32> [ %46, %45 ], [ %58, %52 ]
  %65 = phi <4 x i32> [ %47, %45 ], [ %59, %52 ]
  %66 = mul <4 x i32> %65, %64
  %67 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %66)
  %68 = icmp eq i32 %6, %9
  br i1 %68, label %78, label %69

69:                                               ; preds = %3, %63
  %70 = phi i32 [ %0, %3 ], [ %11, %63 ]
  %71 = phi i32 [ 1, %3 ], [ %67, %63 ]
  br label %72

72:                                               ; preds = %69, %72
  %73 = phi i32 [ %75, %72 ], [ %70, %69 ]
  %74 = phi i32 [ %76, %72 ], [ %71, %69 ]
  %75 = add i32 %73, -2
  %76 = mul i32 %73, %74
  %77 = icmp ult i32 %75, 2
  br i1 %77, label %78, label %72, !llvm.loop !9

78:                                               ; preds = %72, %63, %1
  %79 = phi i32 [ 1, %1 ], [ %67, %63 ], [ %76, %72 ]
  ret i32 %79
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #1

attributes #0 = { nofree nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = distinct !{!9, !10, !6}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
