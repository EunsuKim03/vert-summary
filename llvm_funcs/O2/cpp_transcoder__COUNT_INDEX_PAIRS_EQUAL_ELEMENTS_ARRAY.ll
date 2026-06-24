; ModuleID = 'benchmark/cpp_transcoder/COUNT_INDEX_PAIRS_EQUAL_ELEMENTS_ARRAY/COUNT_INDEX_PAIRS_EQUAL_ELEMENTS_ARRAY_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_INDEX_PAIRS_EQUAL_ELEMENTS_ARRAY/COUNT_INDEX_PAIRS_EQUAL_ELEMENTS_ARRAY_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_INDEX_PAIRS_EQUAL_ELEMENTS_ARRAY_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = zext i32 %1 to i64
  br label %13

7:                                                ; preds = %107, %98, %13
  %8 = phi i32 [ %16, %13 ], [ %102, %98 ], [ %114, %107 ]
  %9 = add nuw nsw i64 %15, 1
  %10 = icmp eq i64 %24, %6
  br i1 %10, label %11, label %13, !llvm.loop !5

11:                                               ; preds = %7, %2
  %12 = phi i32 [ 0, %2 ], [ %8, %7 ]
  ret i32 %12

13:                                               ; preds = %4, %7
  %14 = phi i64 [ 0, %4 ], [ %24, %7 ]
  %15 = phi i64 [ 1, %4 ], [ %9, %7 ]
  %16 = phi i32 [ 0, %4 ], [ %8, %7 ]
  %17 = xor i64 %14, -1
  %18 = add nsw i64 %17, %6
  %19 = add i64 %18, -8
  %20 = lshr i64 %19, 3
  %21 = add nuw nsw i64 %20, 1
  %22 = xor i64 %14, -1
  %23 = add nsw i64 %22, %6
  %24 = add nuw nsw i64 %14, 1
  %25 = icmp ult i64 %24, %5
  br i1 %25, label %26, label %7

26:                                               ; preds = %13
  %27 = getelementptr inbounds i32, i32* %0, i64 %14
  %28 = load i32, i32* %27, align 4, !tbaa !7
  %29 = icmp ult i64 %23, 8
  br i1 %29, label %104, label %30

30:                                               ; preds = %26
  %31 = and i64 %23, -8
  %32 = add i64 %15, %31
  %33 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %16, i64 0
  %34 = insertelement <4 x i32> poison, i32 %28, i64 0
  %35 = shufflevector <4 x i32> %34, <4 x i32> poison, <4 x i32> zeroinitializer
  %36 = insertelement <4 x i32> poison, i32 %28, i64 0
  %37 = shufflevector <4 x i32> %36, <4 x i32> poison, <4 x i32> zeroinitializer
  %38 = and i64 %21, 1
  %39 = icmp ult i64 %19, 8
  br i1 %39, label %77, label %40

40:                                               ; preds = %30
  %41 = and i64 %21, 4611686018427387902
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i64 [ 0, %40 ], [ %74, %42 ]
  %44 = phi <4 x i32> [ %33, %40 ], [ %72, %42 ]
  %45 = phi <4 x i32> [ zeroinitializer, %40 ], [ %73, %42 ]
  %46 = phi i64 [ 0, %40 ], [ %75, %42 ]
  %47 = add i64 %15, %43
  %48 = getelementptr inbounds i32, i32* %0, i64 %47
  %49 = bitcast i32* %48 to <4 x i32>*
  %50 = load <4 x i32>, <4 x i32>* %49, align 4, !tbaa !7
  %51 = getelementptr inbounds i32, i32* %48, i64 4
  %52 = bitcast i32* %51 to <4 x i32>*
  %53 = load <4 x i32>, <4 x i32>* %52, align 4, !tbaa !7
  %54 = icmp eq <4 x i32> %35, %50
  %55 = icmp eq <4 x i32> %37, %53
  %56 = zext <4 x i1> %54 to <4 x i32>
  %57 = zext <4 x i1> %55 to <4 x i32>
  %58 = add <4 x i32> %44, %56
  %59 = add <4 x i32> %45, %57
  %60 = or i64 %43, 8
  %61 = add i64 %15, %60
  %62 = getelementptr inbounds i32, i32* %0, i64 %61
  %63 = bitcast i32* %62 to <4 x i32>*
  %64 = load <4 x i32>, <4 x i32>* %63, align 4, !tbaa !7
  %65 = getelementptr inbounds i32, i32* %62, i64 4
  %66 = bitcast i32* %65 to <4 x i32>*
  %67 = load <4 x i32>, <4 x i32>* %66, align 4, !tbaa !7
  %68 = icmp eq <4 x i32> %35, %64
  %69 = icmp eq <4 x i32> %37, %67
  %70 = zext <4 x i1> %68 to <4 x i32>
  %71 = zext <4 x i1> %69 to <4 x i32>
  %72 = add <4 x i32> %58, %70
  %73 = add <4 x i32> %59, %71
  %74 = add nuw i64 %43, 16
  %75 = add i64 %46, 2
  %76 = icmp eq i64 %75, %41
  br i1 %76, label %77, label %42, !llvm.loop !11

77:                                               ; preds = %42, %30
  %78 = phi <4 x i32> [ undef, %30 ], [ %72, %42 ]
  %79 = phi <4 x i32> [ undef, %30 ], [ %73, %42 ]
  %80 = phi i64 [ 0, %30 ], [ %74, %42 ]
  %81 = phi <4 x i32> [ %33, %30 ], [ %72, %42 ]
  %82 = phi <4 x i32> [ zeroinitializer, %30 ], [ %73, %42 ]
  %83 = icmp eq i64 %38, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %77
  %85 = add i64 %15, %80
  %86 = getelementptr inbounds i32, i32* %0, i64 %85
  %87 = bitcast i32* %86 to <4 x i32>*
  %88 = load <4 x i32>, <4 x i32>* %87, align 4, !tbaa !7
  %89 = getelementptr inbounds i32, i32* %86, i64 4
  %90 = bitcast i32* %89 to <4 x i32>*
  %91 = load <4 x i32>, <4 x i32>* %90, align 4, !tbaa !7
  %92 = icmp eq <4 x i32> %35, %88
  %93 = icmp eq <4 x i32> %37, %91
  %94 = zext <4 x i1> %92 to <4 x i32>
  %95 = zext <4 x i1> %93 to <4 x i32>
  %96 = add <4 x i32> %81, %94
  %97 = add <4 x i32> %82, %95
  br label %98

98:                                               ; preds = %77, %84
  %99 = phi <4 x i32> [ %78, %77 ], [ %96, %84 ]
  %100 = phi <4 x i32> [ %79, %77 ], [ %97, %84 ]
  %101 = add <4 x i32> %100, %99
  %102 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %101)
  %103 = icmp eq i64 %23, %31
  br i1 %103, label %7, label %104

104:                                              ; preds = %26, %98
  %105 = phi i64 [ %15, %26 ], [ %32, %98 ]
  %106 = phi i32 [ %16, %26 ], [ %102, %98 ]
  br label %107

107:                                              ; preds = %104, %107
  %108 = phi i64 [ %115, %107 ], [ %105, %104 ]
  %109 = phi i32 [ %114, %107 ], [ %106, %104 ]
  %110 = getelementptr inbounds i32, i32* %0, i64 %108
  %111 = load i32, i32* %110, align 4, !tbaa !7
  %112 = icmp eq i32 %28, %111
  %113 = zext i1 %112 to i32
  %114 = add nsw i32 %109, %113
  %115 = add nuw nsw i64 %108, 1
  %116 = icmp eq i64 %115, %6
  br i1 %116, label %7, label %107, !llvm.loop !13
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_INDEX_PAIRS_EQUAL_ELEMENTS_ARRAY_processed.cpp() #4 section ".text.startup" {
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = distinct !{!11, !6, !12}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !6, !14, !12}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
