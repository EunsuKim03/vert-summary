; ModuleID = 'benchmark/cpp_transcoder/CHECK_IF_ALL_THE_ELEMENTS_CAN_BE_MADE_OF_SAME_PARITY_BY_INVERTING_ADJACENT_ELEMENTS/CHECK_IF_ALL_THE_ELEMENTS_CAN_BE_MADE_OF_SAME_PARITY_BY_INVERTING_ADJACENT_ELEMENTS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/CHECK_IF_ALL_THE_ELEMENTS_CAN_BE_MADE_OF_SAME_PARITY_BY_INVERTING_ADJACENT_ELEMENTS/CHECK_IF_ALL_THE_ELEMENTS_CAN_BE_MADE_OF_SAME_PARITY_BY_INVERTING_ADJACENT_ELEMENTS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_CHECK_IF_ALL_THE_ELEMENTS_CAN_BE_MADE_OF_SAME_PARITY_BY_INVERTING_ADJACENT_ELEMENTS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %104

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = icmp ult i32 %1, 8
  br i1 %6, label %91, label %7

7:                                                ; preds = %4
  %8 = and i64 %5, 4294967288
  %9 = add nsw i64 %8, -8
  %10 = lshr exact i64 %9, 3
  %11 = add nuw nsw i64 %10, 1
  %12 = and i64 %11, 1
  %13 = icmp eq i64 %9, 0
  br i1 %13, label %55, label %14

14:                                               ; preds = %7
  %15 = and i64 %11, 4611686018427387902
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %52, %16 ]
  %18 = phi <4 x i32> [ zeroinitializer, %14 ], [ %50, %16 ]
  %19 = phi <4 x i32> [ zeroinitializer, %14 ], [ %51, %16 ]
  %20 = phi <4 x i32> [ zeroinitializer, %14 ], [ %46, %16 ]
  %21 = phi <4 x i32> [ zeroinitializer, %14 ], [ %47, %16 ]
  %22 = phi i64 [ 0, %14 ], [ %53, %16 ]
  %23 = getelementptr inbounds i32, i32* %0, i64 %17
  %24 = bitcast i32* %23 to <4 x i32>*
  %25 = load <4 x i32>, <4 x i32>* %24, align 4, !tbaa !5
  %26 = getelementptr inbounds i32, i32* %23, i64 4
  %27 = bitcast i32* %26 to <4 x i32>*
  %28 = load <4 x i32>, <4 x i32>* %27, align 4, !tbaa !5
  %29 = and <4 x i32> %25, <i32 1, i32 1, i32 1, i32 1>
  %30 = and <4 x i32> %28, <i32 1, i32 1, i32 1, i32 1>
  %31 = add <4 x i32> %29, %20
  %32 = add <4 x i32> %30, %21
  %33 = xor <4 x i32> %29, <i32 1, i32 1, i32 1, i32 1>
  %34 = xor <4 x i32> %30, <i32 1, i32 1, i32 1, i32 1>
  %35 = add <4 x i32> %33, %18
  %36 = add <4 x i32> %34, %19
  %37 = or i64 %17, 8
  %38 = getelementptr inbounds i32, i32* %0, i64 %37
  %39 = bitcast i32* %38 to <4 x i32>*
  %40 = load <4 x i32>, <4 x i32>* %39, align 4, !tbaa !5
  %41 = getelementptr inbounds i32, i32* %38, i64 4
  %42 = bitcast i32* %41 to <4 x i32>*
  %43 = load <4 x i32>, <4 x i32>* %42, align 4, !tbaa !5
  %44 = and <4 x i32> %40, <i32 1, i32 1, i32 1, i32 1>
  %45 = and <4 x i32> %43, <i32 1, i32 1, i32 1, i32 1>
  %46 = add <4 x i32> %44, %31
  %47 = add <4 x i32> %45, %32
  %48 = xor <4 x i32> %44, <i32 1, i32 1, i32 1, i32 1>
  %49 = xor <4 x i32> %45, <i32 1, i32 1, i32 1, i32 1>
  %50 = add <4 x i32> %48, %35
  %51 = add <4 x i32> %49, %36
  %52 = add nuw i64 %17, 16
  %53 = add i64 %22, 2
  %54 = icmp eq i64 %53, %15
  br i1 %54, label %55, label %16, !llvm.loop !9

55:                                               ; preds = %16, %7
  %56 = phi <4 x i32> [ undef, %7 ], [ %46, %16 ]
  %57 = phi <4 x i32> [ undef, %7 ], [ %47, %16 ]
  %58 = phi <4 x i32> [ undef, %7 ], [ %50, %16 ]
  %59 = phi <4 x i32> [ undef, %7 ], [ %51, %16 ]
  %60 = phi i64 [ 0, %7 ], [ %52, %16 ]
  %61 = phi <4 x i32> [ zeroinitializer, %7 ], [ %50, %16 ]
  %62 = phi <4 x i32> [ zeroinitializer, %7 ], [ %51, %16 ]
  %63 = phi <4 x i32> [ zeroinitializer, %7 ], [ %46, %16 ]
  %64 = phi <4 x i32> [ zeroinitializer, %7 ], [ %47, %16 ]
  %65 = icmp eq i64 %12, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %55
  %67 = getelementptr inbounds i32, i32* %0, i64 %60
  %68 = bitcast i32* %67 to <4 x i32>*
  %69 = load <4 x i32>, <4 x i32>* %68, align 4, !tbaa !5
  %70 = getelementptr inbounds i32, i32* %67, i64 4
  %71 = bitcast i32* %70 to <4 x i32>*
  %72 = load <4 x i32>, <4 x i32>* %71, align 4, !tbaa !5
  %73 = and <4 x i32> %69, <i32 1, i32 1, i32 1, i32 1>
  %74 = and <4 x i32> %72, <i32 1, i32 1, i32 1, i32 1>
  %75 = add <4 x i32> %73, %63
  %76 = add <4 x i32> %74, %64
  %77 = xor <4 x i32> %73, <i32 1, i32 1, i32 1, i32 1>
  %78 = xor <4 x i32> %74, <i32 1, i32 1, i32 1, i32 1>
  %79 = add <4 x i32> %77, %61
  %80 = add <4 x i32> %78, %62
  br label %81

81:                                               ; preds = %55, %66
  %82 = phi <4 x i32> [ %56, %55 ], [ %75, %66 ]
  %83 = phi <4 x i32> [ %57, %55 ], [ %76, %66 ]
  %84 = phi <4 x i32> [ %58, %55 ], [ %79, %66 ]
  %85 = phi <4 x i32> [ %59, %55 ], [ %80, %66 ]
  %86 = add <4 x i32> %83, %82
  %87 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %86)
  %88 = add <4 x i32> %85, %84
  %89 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %88)
  %90 = icmp eq i64 %8, %5
  br i1 %90, label %95, label %91

91:                                               ; preds = %4, %81
  %92 = phi i64 [ 0, %4 ], [ %8, %81 ]
  %93 = phi i32 [ 0, %4 ], [ %89, %81 ]
  %94 = phi i32 [ 0, %4 ], [ %87, %81 ]
  br label %106

95:                                               ; preds = %106, %81
  %96 = phi i32 [ %87, %81 ], [ %113, %106 ]
  %97 = phi i32 [ %89, %81 ], [ %115, %106 ]
  %98 = and i32 %96, 1
  %99 = icmp eq i32 %98, 0
  %100 = and i32 %97, 1
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %99, i1 true, i1 %101
  %103 = zext i1 %102 to i32
  br label %104

104:                                              ; preds = %95, %2
  %105 = phi i32 [ 1, %2 ], [ %103, %95 ]
  ret i32 %105

106:                                              ; preds = %91, %106
  %107 = phi i64 [ %116, %106 ], [ %92, %91 ]
  %108 = phi i32 [ %115, %106 ], [ %93, %91 ]
  %109 = phi i32 [ %113, %106 ], [ %94, %91 ]
  %110 = getelementptr inbounds i32, i32* %0, i64 %107
  %111 = load i32, i32* %110, align 4, !tbaa !5
  %112 = and i32 %111, 1
  %113 = add nuw nsw i32 %112, %109
  %114 = xor i32 %112, 1
  %115 = add nuw nsw i32 %114, %108
  %116 = add nuw nsw i64 %107, 1
  %117 = icmp eq i64 %116, %5
  br i1 %117, label %95, label %106, !llvm.loop !12
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CHECK_IF_ALL_THE_ELEMENTS_CAN_BE_MADE_OF_SAME_PARITY_BY_INVERTING_ADJACENT_ELEMENTS_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
