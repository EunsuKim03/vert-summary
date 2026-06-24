; ModuleID = 'benchmark/cpp_transcoder/FIND_THE_NUMBER_OCCURRING_ODD_NUMBER_OF_TIMES/FIND_THE_NUMBER_OCCURRING_ODD_NUMBER_OF_TIMES_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FIND_THE_NUMBER_OCCURRING_ODD_NUMBER_OF_TIMES/FIND_THE_NUMBER_OCCURRING_ODD_NUMBER_OF_TIMES_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_THE_NUMBER_OCCURRING_ODD_NUMBER_OF_TIMES_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %107

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = and i64 %5, 4294967288
  %7 = add nsw i64 %6, -8
  %8 = lshr exact i64 %7, 3
  %9 = add nuw nsw i64 %8, 1
  %10 = icmp ult i32 %1, 8
  %11 = and i64 %5, 4294967288
  %12 = and i64 %9, 1
  %13 = icmp eq i64 %7, 0
  %14 = and i64 %9, 4611686018427387902
  %15 = icmp eq i64 %12, 0
  %16 = icmp eq i64 %11, %5
  br label %17

17:                                               ; preds = %104, %4
  %18 = phi i64 [ 0, %4 ], [ %105, %104 ]
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  br i1 %10, label %83, label %21

21:                                               ; preds = %17
  %22 = insertelement <4 x i32> poison, i32 %20, i64 0
  %23 = shufflevector <4 x i32> %22, <4 x i32> poison, <4 x i32> zeroinitializer
  %24 = insertelement <4 x i32> poison, i32 %20, i64 0
  %25 = shufflevector <4 x i32> %24, <4 x i32> poison, <4 x i32> zeroinitializer
  br i1 %13, label %59, label %26

26:                                               ; preds = %21, %26
  %27 = phi i64 [ %56, %26 ], [ 0, %21 ]
  %28 = phi <4 x i32> [ %54, %26 ], [ zeroinitializer, %21 ]
  %29 = phi <4 x i32> [ %55, %26 ], [ zeroinitializer, %21 ]
  %30 = phi i64 [ %57, %26 ], [ 0, %21 ]
  %31 = getelementptr inbounds i32, i32* %0, i64 %27
  %32 = bitcast i32* %31 to <4 x i32>*
  %33 = load <4 x i32>, <4 x i32>* %32, align 4, !tbaa !5
  %34 = getelementptr inbounds i32, i32* %31, i64 4
  %35 = bitcast i32* %34 to <4 x i32>*
  %36 = load <4 x i32>, <4 x i32>* %35, align 4, !tbaa !5
  %37 = icmp eq <4 x i32> %23, %33
  %38 = icmp eq <4 x i32> %25, %36
  %39 = zext <4 x i1> %37 to <4 x i32>
  %40 = zext <4 x i1> %38 to <4 x i32>
  %41 = add <4 x i32> %28, %39
  %42 = add <4 x i32> %29, %40
  %43 = or i64 %27, 8
  %44 = getelementptr inbounds i32, i32* %0, i64 %43
  %45 = bitcast i32* %44 to <4 x i32>*
  %46 = load <4 x i32>, <4 x i32>* %45, align 4, !tbaa !5
  %47 = getelementptr inbounds i32, i32* %44, i64 4
  %48 = bitcast i32* %47 to <4 x i32>*
  %49 = load <4 x i32>, <4 x i32>* %48, align 4, !tbaa !5
  %50 = icmp eq <4 x i32> %23, %46
  %51 = icmp eq <4 x i32> %25, %49
  %52 = zext <4 x i1> %50 to <4 x i32>
  %53 = zext <4 x i1> %51 to <4 x i32>
  %54 = add <4 x i32> %41, %52
  %55 = add <4 x i32> %42, %53
  %56 = add nuw i64 %27, 16
  %57 = add i64 %30, 2
  %58 = icmp eq i64 %57, %14
  br i1 %58, label %59, label %26, !llvm.loop !9

59:                                               ; preds = %26, %21
  %60 = phi <4 x i32> [ undef, %21 ], [ %54, %26 ]
  %61 = phi <4 x i32> [ undef, %21 ], [ %55, %26 ]
  %62 = phi i64 [ 0, %21 ], [ %56, %26 ]
  %63 = phi <4 x i32> [ zeroinitializer, %21 ], [ %54, %26 ]
  %64 = phi <4 x i32> [ zeroinitializer, %21 ], [ %55, %26 ]
  br i1 %15, label %78, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds i32, i32* %0, i64 %62
  %67 = bitcast i32* %66 to <4 x i32>*
  %68 = load <4 x i32>, <4 x i32>* %67, align 4, !tbaa !5
  %69 = getelementptr inbounds i32, i32* %66, i64 4
  %70 = bitcast i32* %69 to <4 x i32>*
  %71 = load <4 x i32>, <4 x i32>* %70, align 4, !tbaa !5
  %72 = icmp eq <4 x i32> %23, %68
  %73 = icmp eq <4 x i32> %25, %71
  %74 = zext <4 x i1> %72 to <4 x i32>
  %75 = zext <4 x i1> %73 to <4 x i32>
  %76 = add <4 x i32> %63, %74
  %77 = add <4 x i32> %64, %75
  br label %78

78:                                               ; preds = %59, %65
  %79 = phi <4 x i32> [ %60, %59 ], [ %76, %65 ]
  %80 = phi <4 x i32> [ %61, %59 ], [ %77, %65 ]
  %81 = add <4 x i32> %80, %79
  %82 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %81)
  br i1 %16, label %86, label %83

83:                                               ; preds = %17, %78
  %84 = phi i64 [ 0, %17 ], [ %11, %78 ]
  %85 = phi i32 [ 0, %17 ], [ %82, %78 ]
  br label %90

86:                                               ; preds = %90, %78
  %87 = phi i32 [ %82, %78 ], [ %97, %90 ]
  %88 = and i32 %87, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %104, label %100

90:                                               ; preds = %83, %90
  %91 = phi i64 [ %98, %90 ], [ %84, %83 ]
  %92 = phi i32 [ %97, %90 ], [ %85, %83 ]
  %93 = getelementptr inbounds i32, i32* %0, i64 %91
  %94 = load i32, i32* %93, align 4, !tbaa !5
  %95 = icmp eq i32 %20, %94
  %96 = zext i1 %95 to i32
  %97 = add nuw nsw i32 %92, %96
  %98 = add nuw nsw i64 %91, 1
  %99 = icmp eq i64 %98, %5
  br i1 %99, label %86, label %90, !llvm.loop !12

100:                                              ; preds = %86
  %101 = and i64 %18, 4294967295
  %102 = getelementptr inbounds i32, i32* %0, i64 %101
  %103 = load i32, i32* %102, align 4, !tbaa !5
  br label %107

104:                                              ; preds = %86
  %105 = add nuw nsw i64 %18, 1
  %106 = icmp eq i64 %105, %5
  br i1 %106, label %107, label %17, !llvm.loop !14

107:                                              ; preds = %104, %2, %100
  %108 = phi i32 [ %103, %100 ], [ -1, %2 ], [ -1, %104 ]
  ret i32 %108
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_THE_NUMBER_OCCURRING_ODD_NUMBER_OF_TIMES_processed.cpp() #4 section ".text.startup" {
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
!14 = distinct !{!14, !10}
