; ModuleID = 'llvm/cpp_transcoder/MINIMUM_XOR_VALUE_PAIR/MINIMUM_XOR_VALUE_PAIR_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MINIMUM_XOR_VALUE_PAIR/MINIMUM_XOR_VALUE_PAIR_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_XOR_VALUE_PAIR_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = zext i32 %1 to i64
  br label %13

7:                                                ; preds = %109, %99, %13
  %8 = phi i32 [ %16, %13 ], [ %104, %99 ], [ %116, %109 ]
  %9 = add nuw nsw i64 %15, 1
  %10 = icmp eq i64 %24, %6
  br i1 %10, label %11, label %13, !llvm.loop !5

11:                                               ; preds = %7, %2
  %12 = phi i32 [ 2147483647, %2 ], [ %8, %7 ]
  ret i32 %12

13:                                               ; preds = %4, %7
  %14 = phi i64 [ 0, %4 ], [ %24, %7 ]
  %15 = phi i64 [ 1, %4 ], [ %9, %7 ]
  %16 = phi i32 [ 2147483647, %4 ], [ %8, %7 ]
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
  br i1 %29, label %106, label %30

30:                                               ; preds = %26
  %31 = and i64 %23, -8
  %32 = add i64 %15, %31
  %33 = insertelement <4 x i32> poison, i32 %16, i64 0
  %34 = shufflevector <4 x i32> %33, <4 x i32> poison, <4 x i32> zeroinitializer
  %35 = insertelement <4 x i32> poison, i32 %28, i64 0
  %36 = shufflevector <4 x i32> %35, <4 x i32> poison, <4 x i32> zeroinitializer
  %37 = insertelement <4 x i32> poison, i32 %28, i64 0
  %38 = shufflevector <4 x i32> %37, <4 x i32> poison, <4 x i32> zeroinitializer
  %39 = and i64 %21, 1
  %40 = icmp ult i64 %19, 8
  br i1 %40, label %78, label %41

41:                                               ; preds = %30
  %42 = and i64 %21, 4611686018427387902
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi i64 [ 0, %41 ], [ %75, %43 ]
  %45 = phi <4 x i32> [ %34, %41 ], [ %73, %43 ]
  %46 = phi <4 x i32> [ %34, %41 ], [ %74, %43 ]
  %47 = phi i64 [ 0, %41 ], [ %76, %43 ]
  %48 = add i64 %15, %44
  %49 = getelementptr inbounds i32, i32* %0, i64 %48
  %50 = bitcast i32* %49 to <4 x i32>*
  %51 = load <4 x i32>, <4 x i32>* %50, align 4, !tbaa !7
  %52 = getelementptr inbounds i32, i32* %49, i64 4
  %53 = bitcast i32* %52 to <4 x i32>*
  %54 = load <4 x i32>, <4 x i32>* %53, align 4, !tbaa !7
  %55 = xor <4 x i32> %51, %36
  %56 = xor <4 x i32> %54, %38
  %57 = icmp slt <4 x i32> %55, %45
  %58 = icmp slt <4 x i32> %56, %46
  %59 = select <4 x i1> %57, <4 x i32> %55, <4 x i32> %45
  %60 = select <4 x i1> %58, <4 x i32> %56, <4 x i32> %46
  %61 = or i64 %44, 8
  %62 = add i64 %15, %61
  %63 = getelementptr inbounds i32, i32* %0, i64 %62
  %64 = bitcast i32* %63 to <4 x i32>*
  %65 = load <4 x i32>, <4 x i32>* %64, align 4, !tbaa !7
  %66 = getelementptr inbounds i32, i32* %63, i64 4
  %67 = bitcast i32* %66 to <4 x i32>*
  %68 = load <4 x i32>, <4 x i32>* %67, align 4, !tbaa !7
  %69 = xor <4 x i32> %65, %36
  %70 = xor <4 x i32> %68, %38
  %71 = icmp slt <4 x i32> %69, %59
  %72 = icmp slt <4 x i32> %70, %60
  %73 = select <4 x i1> %71, <4 x i32> %69, <4 x i32> %59
  %74 = select <4 x i1> %72, <4 x i32> %70, <4 x i32> %60
  %75 = add nuw i64 %44, 16
  %76 = add i64 %47, 2
  %77 = icmp eq i64 %76, %42
  br i1 %77, label %78, label %43, !llvm.loop !11

78:                                               ; preds = %43, %30
  %79 = phi <4 x i32> [ undef, %30 ], [ %73, %43 ]
  %80 = phi <4 x i32> [ undef, %30 ], [ %74, %43 ]
  %81 = phi i64 [ 0, %30 ], [ %75, %43 ]
  %82 = phi <4 x i32> [ %34, %30 ], [ %73, %43 ]
  %83 = phi <4 x i32> [ %34, %30 ], [ %74, %43 ]
  %84 = icmp eq i64 %39, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %78
  %86 = add i64 %15, %81
  %87 = getelementptr inbounds i32, i32* %0, i64 %86
  %88 = bitcast i32* %87 to <4 x i32>*
  %89 = load <4 x i32>, <4 x i32>* %88, align 4, !tbaa !7
  %90 = getelementptr inbounds i32, i32* %87, i64 4
  %91 = bitcast i32* %90 to <4 x i32>*
  %92 = load <4 x i32>, <4 x i32>* %91, align 4, !tbaa !7
  %93 = xor <4 x i32> %89, %36
  %94 = xor <4 x i32> %92, %38
  %95 = icmp slt <4 x i32> %93, %82
  %96 = icmp slt <4 x i32> %94, %83
  %97 = select <4 x i1> %95, <4 x i32> %93, <4 x i32> %82
  %98 = select <4 x i1> %96, <4 x i32> %94, <4 x i32> %83
  br label %99

99:                                               ; preds = %78, %85
  %100 = phi <4 x i32> [ %79, %78 ], [ %97, %85 ]
  %101 = phi <4 x i32> [ %80, %78 ], [ %98, %85 ]
  %102 = icmp slt <4 x i32> %100, %101
  %103 = select <4 x i1> %102, <4 x i32> %100, <4 x i32> %101
  %104 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %103)
  %105 = icmp eq i64 %23, %31
  br i1 %105, label %7, label %106

106:                                              ; preds = %26, %99
  %107 = phi i64 [ %15, %26 ], [ %32, %99 ]
  %108 = phi i32 [ %16, %26 ], [ %104, %99 ]
  br label %109

109:                                              ; preds = %106, %109
  %110 = phi i64 [ %117, %109 ], [ %107, %106 ]
  %111 = phi i32 [ %116, %109 ], [ %108, %106 ]
  %112 = getelementptr inbounds i32, i32* %0, i64 %110
  %113 = load i32, i32* %112, align 4, !tbaa !7
  %114 = xor i32 %113, %28
  %115 = icmp slt i32 %114, %111
  %116 = select i1 %115, i32 %114, i32 %111
  %117 = add nuw nsw i64 %110, 1
  %118 = icmp eq i64 %117, %6
  br i1 %118, label %7, label %109, !llvm.loop !13
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_XOR_VALUE_PAIR_reprocessed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

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
