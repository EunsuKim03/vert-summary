; ModuleID = 'benchmark/c_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS/K_TH_ELEMENT_TWO_SORTED_ARRAYS_processed.c'
source_filename = "benchmark/c_transcoder/K_TH_ELEMENT_TWO_SORTED_ARRAYS/K_TH_ELEMENT_TWO_SORTED_ARRAYS_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local i32 @f_gold(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = add nsw i32 %3, %2
  %7 = zext i32 %6 to i64
  %8 = alloca i32, i64 %7, align 16
  %9 = icmp sgt i32 %2, 0
  %10 = icmp sgt i32 %3, 0
  %11 = and i1 %9, %10
  br i1 %11, label %76, label %14

12:                                               ; preds = %76
  %13 = trunc i64 %94 to i32
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi i32 [ 0, %5 ], [ %89, %12 ]
  %16 = phi i32 [ 0, %5 ], [ %92, %12 ]
  %17 = phi i32 [ 0, %5 ], [ %13, %12 ]
  %18 = icmp slt i32 %15, %2
  br i1 %18, label %19, label %101

19:                                               ; preds = %14
  %20 = zext i32 %17 to i64
  %21 = getelementptr i32, i32* %8, i64 %20
  %22 = bitcast i32* %21 to i8*
  %23 = sext i32 %15 to i64
  %24 = getelementptr i32, i32* %0, i64 %23
  %25 = bitcast i32* %24 to i8*
  %26 = xor i32 %15, -1
  %27 = add i32 %26, %2
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 2
  %30 = add nuw nsw i64 %29, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(1) %22, i8* noundef nonnull align 4 dereferenceable(1) %25, i64 %30, i1 false), !tbaa !5
  %31 = sext i32 %2 to i64
  %32 = sub nsw i64 %31, %23
  %33 = icmp ult i64 %32, 4
  br i1 %33, label %73, label %34

34:                                               ; preds = %19
  %35 = and i64 %32, -4
  %36 = add nsw i64 %35, %23
  %37 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %20, i64 0
  %38 = add nsw i64 %35, -4
  %39 = lshr exact i64 %38, 2
  %40 = add nuw nsw i64 %39, 1
  %41 = and i64 %40, 7
  %42 = icmp ult i64 %38, 28
  br i1 %42, label %53, label %43

43:                                               ; preds = %34
  %44 = and i64 %40, 9223372036854775800
  br label %45

45:                                               ; preds = %45, %43
  %46 = phi <2 x i64> [ %37, %43 ], [ %49, %45 ]
  %47 = phi <2 x i64> [ zeroinitializer, %43 ], [ %50, %45 ]
  %48 = phi i64 [ 0, %43 ], [ %51, %45 ]
  %49 = add <2 x i64> %46, <i64 8, i64 8>
  %50 = add <2 x i64> %47, <i64 8, i64 8>
  %51 = add i64 %48, 8
  %52 = icmp eq i64 %51, %44
  br i1 %52, label %53, label %45, !llvm.loop !9

53:                                               ; preds = %45, %34
  %54 = phi <2 x i64> [ undef, %34 ], [ %49, %45 ]
  %55 = phi <2 x i64> [ undef, %34 ], [ %50, %45 ]
  %56 = phi <2 x i64> [ %37, %34 ], [ %49, %45 ]
  %57 = phi <2 x i64> [ zeroinitializer, %34 ], [ %50, %45 ]
  %58 = icmp eq i64 %41, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %53, %59
  %60 = phi <2 x i64> [ %63, %59 ], [ %56, %53 ]
  %61 = phi <2 x i64> [ %64, %59 ], [ %57, %53 ]
  %62 = phi i64 [ %65, %59 ], [ 0, %53 ]
  %63 = add <2 x i64> %60, <i64 1, i64 1>
  %64 = add <2 x i64> %61, <i64 1, i64 1>
  %65 = add i64 %62, 1
  %66 = icmp eq i64 %65, %41
  br i1 %66, label %67, label %59, !llvm.loop !12

67:                                               ; preds = %59, %53
  %68 = phi <2 x i64> [ %54, %53 ], [ %63, %59 ]
  %69 = phi <2 x i64> [ %55, %53 ], [ %64, %59 ]
  %70 = add <2 x i64> %69, %68
  %71 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %70)
  %72 = icmp eq i64 %32, %35
  br i1 %72, label %98, label %73

73:                                               ; preds = %19, %67
  %74 = phi i64 [ %23, %19 ], [ %36, %67 ]
  %75 = phi i64 [ %20, %19 ], [ %71, %67 ]
  br label %116

76:                                               ; preds = %5, %76
  %77 = phi i64 [ %94, %76 ], [ 0, %5 ]
  %78 = phi i32 [ %92, %76 ], [ 0, %5 ]
  %79 = phi i32 [ %89, %76 ], [ 0, %5 ]
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %0, i64 %80
  %82 = load i32, i32* %81, align 4, !tbaa !5
  %83 = zext i32 %78 to i64
  %84 = getelementptr inbounds i32, i32* %1, i64 %83
  %85 = load i32, i32* %84, align 4, !tbaa !5
  %86 = icmp slt i32 %82, %85
  %87 = select i1 %86, i32 %82, i32 %85
  %88 = zext i1 %86 to i32
  %89 = add nuw nsw i32 %79, %88
  %90 = xor i1 %86, true
  %91 = zext i1 %90 to i32
  %92 = add nuw nsw i32 %78, %91
  %93 = getelementptr inbounds i32, i32* %8, i64 %77
  store i32 %87, i32* %93, align 4
  %94 = add nuw i64 %77, 1
  %95 = icmp slt i32 %89, %2
  %96 = icmp slt i32 %92, %3
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %76, label %12, !llvm.loop !14

98:                                               ; preds = %116, %67
  %99 = phi i64 [ %71, %67 ], [ %120, %116 ]
  %100 = trunc i64 %99 to i32
  br label %101

101:                                              ; preds = %98, %14
  %102 = phi i32 [ %17, %14 ], [ %100, %98 ]
  %103 = icmp slt i32 %16, %3
  br i1 %103, label %104, label %122

104:                                              ; preds = %101
  %105 = zext i32 %102 to i64
  %106 = getelementptr i32, i32* %8, i64 %105
  %107 = bitcast i32* %106 to i8*
  %108 = sext i32 %16 to i64
  %109 = getelementptr i32, i32* %1, i64 %108
  %110 = bitcast i32* %109 to i8*
  %111 = xor i32 %16, -1
  %112 = add i32 %111, %3
  %113 = zext i32 %112 to i64
  %114 = shl nuw nsw i64 %113, 2
  %115 = add nuw nsw i64 %114, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(1) %107, i8* noundef nonnull align 4 dereferenceable(1) %110, i64 %115, i1 false), !tbaa !5
  br label %122

116:                                              ; preds = %73, %116
  %117 = phi i64 [ %119, %116 ], [ %74, %73 ]
  %118 = phi i64 [ %120, %116 ], [ %75, %73 ]
  %119 = add nsw i64 %117, 1
  %120 = add nuw nsw i64 %118, 1
  %121 = icmp eq i64 %119, %31
  br i1 %121, label %98, label %116, !llvm.loop !15

122:                                              ; preds = %104, %101
  %123 = add nsw i32 %4, -1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %8, i64 %124
  %126 = load i32, i32* %125, align 4, !tbaa !5
  ret i32 %126
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #2

attributes #0 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nofree nosync nounwind readnone willreturn }

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
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10, !16, !11}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
