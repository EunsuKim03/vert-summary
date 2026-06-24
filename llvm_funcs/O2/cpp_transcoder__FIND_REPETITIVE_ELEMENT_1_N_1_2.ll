; ModuleID = 'benchmark/cpp_transcoder/FIND_REPETITIVE_ELEMENT_1_N_1_2/FIND_REPETITIVE_ELEMENT_1_N_1_2_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FIND_REPETITIVE_ELEMENT_1_N_1_2/FIND_REPETITIVE_ELEMENT_1_N_1_2_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_REPETITIVE_ELEMENT_1_N_1_2_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = add i32 %1, -1
  %4 = icmp sgt i32 %1, 1
  br i1 %4, label %5, label %89

5:                                                ; preds = %2
  %6 = zext i32 %3 to i64
  %7 = icmp ult i32 %3, 8
  br i1 %7, label %86, label %8

8:                                                ; preds = %5
  %9 = and i64 %6, 4294967288
  %10 = add nsw i64 %9, -8
  %11 = lshr exact i64 %10, 3
  %12 = add nuw nsw i64 %11, 1
  %13 = and i64 %12, 1
  %14 = icmp eq i64 %10, 0
  br i1 %14, label %59, label %15

15:                                               ; preds = %8
  %16 = and i64 %12, 4611686018427387902
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i64 [ 0, %15 ], [ %53, %17 ]
  %19 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %15 ], [ %54, %17 ]
  %20 = phi <4 x i32> [ zeroinitializer, %15 ], [ %51, %17 ]
  %21 = phi <4 x i32> [ zeroinitializer, %15 ], [ %52, %17 ]
  %22 = phi i64 [ 0, %15 ], [ %55, %17 ]
  %23 = trunc <4 x i64> %19 to <4 x i32>
  %24 = add <4 x i32> %23, <i32 1, i32 1, i32 1, i32 1>
  %25 = trunc <4 x i64> %19 to <4 x i32>
  %26 = add <4 x i32> %25, <i32 5, i32 5, i32 5, i32 5>
  %27 = xor <4 x i32> %20, %24
  %28 = xor <4 x i32> %21, %26
  %29 = getelementptr inbounds i32, i32* %0, i64 %18
  %30 = bitcast i32* %29 to <4 x i32>*
  %31 = load <4 x i32>, <4 x i32>* %30, align 4, !tbaa !5
  %32 = getelementptr inbounds i32, i32* %29, i64 4
  %33 = bitcast i32* %32 to <4 x i32>*
  %34 = load <4 x i32>, <4 x i32>* %33, align 4, !tbaa !5
  %35 = xor <4 x i32> %27, %31
  %36 = xor <4 x i32> %28, %34
  %37 = or i64 %18, 8
  %38 = add <4 x i64> %19, <i64 8, i64 8, i64 8, i64 8>
  %39 = trunc <4 x i64> %38 to <4 x i32>
  %40 = add <4 x i32> %39, <i32 1, i32 1, i32 1, i32 1>
  %41 = trunc <4 x i64> %38 to <4 x i32>
  %42 = add <4 x i32> %41, <i32 5, i32 5, i32 5, i32 5>
  %43 = xor <4 x i32> %35, %40
  %44 = xor <4 x i32> %36, %42
  %45 = getelementptr inbounds i32, i32* %0, i64 %37
  %46 = bitcast i32* %45 to <4 x i32>*
  %47 = load <4 x i32>, <4 x i32>* %46, align 4, !tbaa !5
  %48 = getelementptr inbounds i32, i32* %45, i64 4
  %49 = bitcast i32* %48 to <4 x i32>*
  %50 = load <4 x i32>, <4 x i32>* %49, align 4, !tbaa !5
  %51 = xor <4 x i32> %43, %47
  %52 = xor <4 x i32> %44, %50
  %53 = add nuw i64 %18, 16
  %54 = add <4 x i64> %19, <i64 16, i64 16, i64 16, i64 16>
  %55 = add i64 %22, 2
  %56 = icmp eq i64 %55, %16
  br i1 %56, label %57, label %17, !llvm.loop !9

57:                                               ; preds = %17
  %58 = trunc <4 x i64> %54 to <4 x i32>
  br label %59

59:                                               ; preds = %57, %8
  %60 = phi <4 x i32> [ undef, %8 ], [ %51, %57 ]
  %61 = phi <4 x i32> [ undef, %8 ], [ %52, %57 ]
  %62 = phi i64 [ 0, %8 ], [ %53, %57 ]
  %63 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %8 ], [ %58, %57 ]
  %64 = phi <4 x i32> [ zeroinitializer, %8 ], [ %51, %57 ]
  %65 = phi <4 x i32> [ zeroinitializer, %8 ], [ %52, %57 ]
  %66 = icmp eq i64 %13, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %59
  %68 = add <4 x i32> %63, <i32 1, i32 1, i32 1, i32 1>
  %69 = add <4 x i32> %63, <i32 5, i32 5, i32 5, i32 5>
  %70 = xor <4 x i32> %64, %68
  %71 = xor <4 x i32> %65, %69
  %72 = getelementptr inbounds i32, i32* %0, i64 %62
  %73 = bitcast i32* %72 to <4 x i32>*
  %74 = load <4 x i32>, <4 x i32>* %73, align 4, !tbaa !5
  %75 = getelementptr inbounds i32, i32* %72, i64 4
  %76 = bitcast i32* %75 to <4 x i32>*
  %77 = load <4 x i32>, <4 x i32>* %76, align 4, !tbaa !5
  %78 = xor <4 x i32> %70, %74
  %79 = xor <4 x i32> %71, %77
  br label %80

80:                                               ; preds = %59, %67
  %81 = phi <4 x i32> [ %60, %59 ], [ %78, %67 ]
  %82 = phi <4 x i32> [ %61, %59 ], [ %79, %67 ]
  %83 = xor <4 x i32> %82, %81
  %84 = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %83)
  %85 = icmp eq i64 %9, %6
  br i1 %85, label %89, label %86

86:                                               ; preds = %5, %80
  %87 = phi i64 [ 0, %5 ], [ %9, %80 ]
  %88 = phi i32 [ 0, %5 ], [ %84, %80 ]
  br label %95

89:                                               ; preds = %95, %80, %2
  %90 = phi i32 [ 0, %2 ], [ %84, %80 ], [ %103, %95 ]
  %91 = sext i32 %3 to i64
  %92 = getelementptr inbounds i32, i32* %0, i64 %91
  %93 = load i32, i32* %92, align 4, !tbaa !5
  %94 = xor i32 %93, %90
  ret i32 %94

95:                                               ; preds = %86, %95
  %96 = phi i64 [ %98, %95 ], [ %87, %86 ]
  %97 = phi i32 [ %103, %95 ], [ %88, %86 ]
  %98 = add nuw nsw i64 %96, 1
  %99 = trunc i64 %98 to i32
  %100 = xor i32 %97, %99
  %101 = getelementptr inbounds i32, i32* %0, i64 %96
  %102 = load i32, i32* %101, align 4, !tbaa !5
  %103 = xor i32 %100, %102
  %104 = icmp eq i64 %98, %6
  br i1 %104, label %89, label %95, !llvm.loop !12
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_REPETITIVE_ELEMENT_1_N_1_2_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #5

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
