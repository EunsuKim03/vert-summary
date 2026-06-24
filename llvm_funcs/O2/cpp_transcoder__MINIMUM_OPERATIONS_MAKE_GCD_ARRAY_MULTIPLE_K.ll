; ModuleID = 'benchmark/cpp_transcoder/MINIMUM_OPERATIONS_MAKE_GCD_ARRAY_MULTIPLE_K/MINIMUM_OPERATIONS_MAKE_GCD_ARRAY_MULTIPLE_K_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MINIMUM_OPERATIONS_MAKE_GCD_ARRAY_MULTIPLE_K/MINIMUM_OPERATIONS_MAKE_GCD_ARRAY_MULTIPLE_K_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_OPERATIONS_MAKE_GCD_ARRAY_MULTIPLE_K_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %111

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = icmp ult i32 %1, 8
  br i1 %7, label %108, label %8

8:                                                ; preds = %5
  %9 = and i64 %6, 4294967288
  %10 = insertelement <4 x i32> poison, i32 %2, i64 0
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  %12 = insertelement <4 x i32> poison, i32 %2, i64 0
  %13 = shufflevector <4 x i32> %12, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %14

14:                                               ; preds = %88, %8
  %15 = phi i64 [ 0, %8 ], [ %102, %88 ]
  %16 = phi <4 x i32> [ zeroinitializer, %8 ], [ %100, %88 ]
  %17 = phi <4 x i32> [ zeroinitializer, %8 ], [ %101, %88 ]
  %18 = getelementptr inbounds i32, i32* %0, i64 %15
  %19 = bitcast i32* %18 to <4 x i32>*
  %20 = load <4 x i32>, <4 x i32>* %19, align 4, !tbaa !5
  %21 = getelementptr inbounds i32, i32* %18, i64 4
  %22 = bitcast i32* %21 to <4 x i32>*
  %23 = load <4 x i32>, <4 x i32>* %22, align 4, !tbaa !5
  %24 = icmp ne <4 x i32> %20, <i32 1, i32 1, i32 1, i32 1>
  %25 = icmp ne <4 x i32> %23, <i32 1, i32 1, i32 1, i32 1>
  %26 = icmp sgt <4 x i32> %20, %11
  %27 = icmp sgt <4 x i32> %23, %13
  %28 = and <4 x i1> %24, %26
  %29 = and <4 x i1> %25, %27
  %30 = add <4 x i32> %16, %11
  %31 = add <4 x i32> %17, %13
  %32 = sub <4 x i32> %30, %20
  %33 = sub <4 x i32> %31, %23
  %34 = extractelement <4 x i1> %28, i64 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %14
  %36 = extractelement <4 x i32> %20, i64 0
  %37 = srem i32 %36, %2
  %38 = insertelement <4 x i32> poison, i32 %37, i64 0
  br label %39

39:                                               ; preds = %35, %14
  %40 = phi <4 x i32> [ poison, %14 ], [ %38, %35 ]
  %41 = extractelement <4 x i1> %28, i64 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = extractelement <4 x i32> %20, i64 1
  %44 = srem i32 %43, %2
  %45 = insertelement <4 x i32> %40, i32 %44, i64 1
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi <4 x i32> [ %40, %39 ], [ %45, %42 ]
  %48 = extractelement <4 x i1> %28, i64 2
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = extractelement <4 x i32> %20, i64 2
  %51 = srem i32 %50, %2
  %52 = insertelement <4 x i32> %47, i32 %51, i64 2
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi <4 x i32> [ %47, %46 ], [ %52, %49 ]
  %55 = extractelement <4 x i1> %28, i64 3
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = extractelement <4 x i32> %20, i64 3
  %58 = srem i32 %57, %2
  %59 = insertelement <4 x i32> %54, i32 %58, i64 3
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi <4 x i32> [ %54, %53 ], [ %59, %56 ]
  %62 = extractelement <4 x i1> %29, i64 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = extractelement <4 x i32> %23, i64 0
  %65 = srem i32 %64, %2
  %66 = insertelement <4 x i32> poison, i32 %65, i64 0
  br label %67

67:                                               ; preds = %63, %60
  %68 = phi <4 x i32> [ poison, %60 ], [ %66, %63 ]
  %69 = extractelement <4 x i1> %29, i64 1
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = extractelement <4 x i32> %23, i64 1
  %72 = srem i32 %71, %2
  %73 = insertelement <4 x i32> %68, i32 %72, i64 1
  br label %74

74:                                               ; preds = %70, %67
  %75 = phi <4 x i32> [ %68, %67 ], [ %73, %70 ]
  %76 = extractelement <4 x i1> %29, i64 2
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = extractelement <4 x i32> %23, i64 2
  %79 = srem i32 %78, %2
  %80 = insertelement <4 x i32> %75, i32 %79, i64 2
  br label %81

81:                                               ; preds = %77, %74
  %82 = phi <4 x i32> [ %75, %74 ], [ %80, %77 ]
  %83 = extractelement <4 x i1> %29, i64 3
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = extractelement <4 x i32> %23, i64 3
  %86 = srem i32 %85, %2
  %87 = insertelement <4 x i32> %82, i32 %86, i64 3
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi <4 x i32> [ %82, %81 ], [ %87, %84 ]
  %90 = sub nsw <4 x i32> %11, %61
  %91 = sub nsw <4 x i32> %13, %89
  %92 = icmp slt <4 x i32> %90, %61
  %93 = icmp slt <4 x i32> %91, %89
  %94 = select <4 x i1> %92, <4 x i32> %90, <4 x i32> %61
  %95 = select <4 x i1> %93, <4 x i32> %91, <4 x i32> %89
  %96 = add <4 x i32> %94, %16
  %97 = add <4 x i32> %95, %17
  %98 = and <4 x i1> %24, %26
  %99 = and <4 x i1> %25, %27
  %100 = select <4 x i1> %98, <4 x i32> %96, <4 x i32> %32
  %101 = select <4 x i1> %99, <4 x i32> %97, <4 x i32> %33
  %102 = add nuw i64 %15, 8
  %103 = icmp eq i64 %102, %9
  br i1 %103, label %104, label %14, !llvm.loop !9

104:                                              ; preds = %88
  %105 = add <4 x i32> %101, %100
  %106 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %105)
  %107 = icmp eq i64 %9, %6
  br i1 %107, label %111, label %108

108:                                              ; preds = %5, %104
  %109 = phi i64 [ 0, %5 ], [ %9, %104 ]
  %110 = phi i32 [ 0, %5 ], [ %106, %104 ]
  br label %113

111:                                              ; preds = %130, %104, %3
  %112 = phi i32 [ 0, %3 ], [ %106, %104 ], [ %131, %130 ]
  ret i32 %112

113:                                              ; preds = %108, %130
  %114 = phi i64 [ %132, %130 ], [ %109, %108 ]
  %115 = phi i32 [ %131, %130 ], [ %110, %108 ]
  %116 = getelementptr inbounds i32, i32* %0, i64 %114
  %117 = load i32, i32* %116, align 4, !tbaa !5
  %118 = icmp ne i32 %117, 1
  %119 = icmp sgt i32 %117, %2
  %120 = and i1 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %113
  %122 = srem i32 %117, %2
  %123 = sub nsw i32 %2, %122
  %124 = icmp slt i32 %123, %122
  %125 = select i1 %124, i32 %123, i32 %122
  %126 = add nsw i32 %125, %115
  br label %130

127:                                              ; preds = %113
  %128 = add nsw i32 %115, %2
  %129 = sub i32 %128, %117
  br label %130

130:                                              ; preds = %121, %127
  %131 = phi i32 [ %126, %121 ], [ %129, %127 ]
  %132 = add nuw nsw i64 %114, 1
  %133 = icmp eq i64 %132, %6
  br i1 %133, label %111, label %113, !llvm.loop !12
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_OPERATIONS_MAKE_GCD_ARRAY_MULTIPLE_K_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

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
