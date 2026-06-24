; ModuleID = 'llvm/cpp_transcoder/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY/MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %90

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = icmp ult i32 %1, 8
  br i1 %6, label %86, label %7

7:                                                ; preds = %4
  %8 = and i64 %5, 4294967288
  %9 = add nsw i64 %8, -8
  %10 = lshr exact i64 %9, 3
  %11 = add nuw nsw i64 %10, 1
  %12 = and i64 %11, 1
  %13 = icmp eq i64 %9, 0
  br i1 %13, label %51, label %14

14:                                               ; preds = %7
  %15 = and i64 %11, 4611686018427387902
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %48, %16 ]
  %18 = phi <4 x i32> [ zeroinitializer, %14 ], [ %46, %16 ]
  %19 = phi <4 x i32> [ zeroinitializer, %14 ], [ %47, %16 ]
  %20 = phi <4 x i32> [ <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, %14 ], [ %44, %16 ]
  %21 = phi <4 x i32> [ <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, %14 ], [ %45, %16 ]
  %22 = phi i64 [ 0, %14 ], [ %49, %16 ]
  %23 = getelementptr inbounds i32, i32* %0, i64 %17
  %24 = bitcast i32* %23 to <4 x i32>*
  %25 = load <4 x i32>, <4 x i32>* %24, align 4, !tbaa !5
  %26 = getelementptr inbounds i32, i32* %23, i64 4
  %27 = bitcast i32* %26 to <4 x i32>*
  %28 = load <4 x i32>, <4 x i32>* %27, align 4, !tbaa !5
  %29 = icmp slt <4 x i32> %20, %25
  %30 = icmp slt <4 x i32> %21, %28
  %31 = select <4 x i1> %29, <4 x i32> %20, <4 x i32> %25
  %32 = select <4 x i1> %30, <4 x i32> %21, <4 x i32> %28
  %33 = add <4 x i32> %25, %18
  %34 = add <4 x i32> %28, %19
  %35 = or i64 %17, 8
  %36 = getelementptr inbounds i32, i32* %0, i64 %35
  %37 = bitcast i32* %36 to <4 x i32>*
  %38 = load <4 x i32>, <4 x i32>* %37, align 4, !tbaa !5
  %39 = getelementptr inbounds i32, i32* %36, i64 4
  %40 = bitcast i32* %39 to <4 x i32>*
  %41 = load <4 x i32>, <4 x i32>* %40, align 4, !tbaa !5
  %42 = icmp slt <4 x i32> %31, %38
  %43 = icmp slt <4 x i32> %32, %41
  %44 = select <4 x i1> %42, <4 x i32> %31, <4 x i32> %38
  %45 = select <4 x i1> %43, <4 x i32> %32, <4 x i32> %41
  %46 = add <4 x i32> %38, %33
  %47 = add <4 x i32> %41, %34
  %48 = add nuw i64 %17, 16
  %49 = add i64 %22, 2
  %50 = icmp eq i64 %49, %15
  br i1 %50, label %51, label %16, !llvm.loop !9

51:                                               ; preds = %16, %7
  %52 = phi <4 x i32> [ undef, %7 ], [ %44, %16 ]
  %53 = phi <4 x i32> [ undef, %7 ], [ %45, %16 ]
  %54 = phi <4 x i32> [ undef, %7 ], [ %46, %16 ]
  %55 = phi <4 x i32> [ undef, %7 ], [ %47, %16 ]
  %56 = phi i64 [ 0, %7 ], [ %48, %16 ]
  %57 = phi <4 x i32> [ zeroinitializer, %7 ], [ %46, %16 ]
  %58 = phi <4 x i32> [ zeroinitializer, %7 ], [ %47, %16 ]
  %59 = phi <4 x i32> [ <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, %7 ], [ %44, %16 ]
  %60 = phi <4 x i32> [ <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, %7 ], [ %45, %16 ]
  %61 = icmp eq i64 %12, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %51
  %63 = getelementptr inbounds i32, i32* %0, i64 %56
  %64 = bitcast i32* %63 to <4 x i32>*
  %65 = load <4 x i32>, <4 x i32>* %64, align 4, !tbaa !5
  %66 = getelementptr inbounds i32, i32* %63, i64 4
  %67 = bitcast i32* %66 to <4 x i32>*
  %68 = load <4 x i32>, <4 x i32>* %67, align 4, !tbaa !5
  %69 = icmp slt <4 x i32> %59, %65
  %70 = icmp slt <4 x i32> %60, %68
  %71 = select <4 x i1> %69, <4 x i32> %59, <4 x i32> %65
  %72 = select <4 x i1> %70, <4 x i32> %60, <4 x i32> %68
  %73 = add <4 x i32> %65, %57
  %74 = add <4 x i32> %68, %58
  br label %75

75:                                               ; preds = %51, %62
  %76 = phi <4 x i32> [ %52, %51 ], [ %71, %62 ]
  %77 = phi <4 x i32> [ %53, %51 ], [ %72, %62 ]
  %78 = phi <4 x i32> [ %54, %51 ], [ %73, %62 ]
  %79 = phi <4 x i32> [ %55, %51 ], [ %74, %62 ]
  %80 = icmp slt <4 x i32> %76, %77
  %81 = select <4 x i1> %80, <4 x i32> %76, <4 x i32> %77
  %82 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %81)
  %83 = add <4 x i32> %79, %78
  %84 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %83)
  %85 = icmp eq i64 %8, %5
  br i1 %85, label %90, label %86

86:                                               ; preds = %4, %75
  %87 = phi i64 [ 0, %4 ], [ %8, %75 ]
  %88 = phi i32 [ 0, %4 ], [ %84, %75 ]
  %89 = phi i32 [ 2147483647, %4 ], [ %82, %75 ]
  br label %95

90:                                               ; preds = %95, %75, %2
  %91 = phi i32 [ 2147483647, %2 ], [ %82, %75 ], [ %102, %95 ]
  %92 = phi i32 [ 0, %2 ], [ %84, %75 ], [ %103, %95 ]
  %93 = sub nsw i32 %92, %91
  %94 = mul nsw i32 %93, %91
  ret i32 %94

95:                                               ; preds = %86, %95
  %96 = phi i64 [ %104, %95 ], [ %87, %86 ]
  %97 = phi i32 [ %103, %95 ], [ %88, %86 ]
  %98 = phi i32 [ %102, %95 ], [ %89, %86 ]
  %99 = getelementptr inbounds i32, i32* %0, i64 %96
  %100 = load i32, i32* %99, align 4, !tbaa !5
  %101 = icmp slt i32 %98, %100
  %102 = select i1 %101, i32 %98, i32 %100
  %103 = add nsw i32 %100, %97
  %104 = add nuw nsw i64 %96, 1
  %105 = icmp eq i64 %104, %5
  br i1 %105, label %90, label %95, !llvm.loop !12
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_COST_CONNECT_WEIGHTED_NODES_REPRESENTED_ARRAY_reprocessed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }

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
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !10, !13, !11}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
