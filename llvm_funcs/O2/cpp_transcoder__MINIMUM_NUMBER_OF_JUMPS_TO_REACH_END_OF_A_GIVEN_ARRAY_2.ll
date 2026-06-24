; ModuleID = 'llvm/cpp_transcoder/MINIMUM_NUMBER_OF_JUMPS_TO_REACH_END_OF_A_GIVEN_ARRAY_2/MINIMUM_NUMBER_OF_JUMPS_TO_REACH_END_OF_A_GIVEN_ARRAY_2_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MINIMUM_NUMBER_OF_JUMPS_TO_REACH_END_OF_A_GIVEN_ARRAY_2/MINIMUM_NUMBER_OF_JUMPS_TO_REACH_END_OF_A_GIVEN_ARRAY_2_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_NUMBER_OF_JUMPS_TO_REACH_END_OF_A_GIVEN_ARRAY_2_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = sext i32 %1 to i64
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 4)
  %5 = extractvalue { i64, i1 } %4, 1
  %6 = extractvalue { i64, i1 } %4, 0
  %7 = select i1 %5, i64 -1, i64 %6
  %8 = tail call noalias noundef nonnull i8* @_Znam(i64 noundef %7) #9
  %9 = bitcast i8* %8 to i32*
  %10 = add nsw i32 %1, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32 0, i32* %12, align 4, !tbaa !5
  %13 = icmp sgt i32 %1, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = add nsw i32 %1, -2
  %16 = zext i32 %15 to i64
  %17 = sub nsw i64 1, %3
  br label %20

18:                                               ; preds = %141, %2
  %19 = load i32, i32* %9, align 4, !tbaa !5
  ret i32 %19

20:                                               ; preds = %14, %141
  %21 = phi i64 [ 0, %14 ], [ %146, %141 ]
  %22 = phi i64 [ %16, %14 ], [ %144, %141 ]
  %23 = phi i64 [ %3, %14 ], [ %31, %141 ]
  %24 = sub i64 %3, %21
  %25 = call i64 @llvm.smax.i64(i64 %24, i64 %3)
  %26 = sub i64 %21, %3
  %27 = add i64 %25, %26
  %28 = xor i64 %21, -1
  %29 = add i64 %28, %3
  %30 = add i64 %17, %21
  %31 = add nsw i64 %23, -1
  %32 = trunc i64 %22 to i32
  %33 = getelementptr inbounds i32, i32* %0, i64 %22
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %141, label %36

36:                                               ; preds = %20
  %37 = xor i32 %32, -1
  %38 = add i32 %37, %1
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %141

40:                                               ; preds = %36
  %41 = add nsw i32 %32, 1
  %42 = icmp slt i32 %41, %1
  %43 = icmp sgt i32 %34, 0
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %141

45:                                               ; preds = %40
  %46 = add nsw i32 %34, %32
  %47 = sext i32 %46 to i64
  %48 = call i64 @llvm.smax.i64(i64 %29, i64 %47)
  %49 = add i64 %48, %30
  %50 = icmp eq i64 %27, 0
  %51 = call i64 @llvm.umin.i64(i64 %49, i64 %27)
  %52 = add nsw i64 %51, 1
  %53 = select i1 %50, i64 1, i64 %52
  %54 = icmp ult i64 %53, 8
  br i1 %54, label %122, label %55

55:                                               ; preds = %45
  %56 = and i64 %53, -8
  %57 = add i64 %31, %56
  %58 = add i64 %56, -8
  %59 = lshr exact i64 %58, 3
  %60 = add nuw nsw i64 %59, 1
  %61 = and i64 %60, 1
  %62 = icmp eq i64 %58, 0
  br i1 %62, label %96, label %63

63:                                               ; preds = %55
  %64 = and i64 %60, 4611686018427387902
  br label %65

65:                                               ; preds = %65, %63
  %66 = phi i64 [ 0, %63 ], [ %93, %65 ]
  %67 = phi <4 x i32> [ <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, %63 ], [ %91, %65 ]
  %68 = phi <4 x i32> [ <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, %63 ], [ %92, %65 ]
  %69 = phi i64 [ 0, %63 ], [ %94, %65 ]
  %70 = add i64 %31, %66
  %71 = getelementptr inbounds i32, i32* %9, i64 %70
  %72 = bitcast i32* %71 to <4 x i32>*
  %73 = load <4 x i32>, <4 x i32>* %72, align 4, !tbaa !5
  %74 = getelementptr inbounds i32, i32* %71, i64 4
  %75 = bitcast i32* %74 to <4 x i32>*
  %76 = load <4 x i32>, <4 x i32>* %75, align 4, !tbaa !5
  %77 = icmp sgt <4 x i32> %67, %73
  %78 = icmp sgt <4 x i32> %68, %76
  %79 = select <4 x i1> %77, <4 x i32> %73, <4 x i32> %67
  %80 = select <4 x i1> %78, <4 x i32> %76, <4 x i32> %68
  %81 = or i64 %66, 8
  %82 = add i64 %31, %81
  %83 = getelementptr inbounds i32, i32* %9, i64 %82
  %84 = bitcast i32* %83 to <4 x i32>*
  %85 = load <4 x i32>, <4 x i32>* %84, align 4, !tbaa !5
  %86 = getelementptr inbounds i32, i32* %83, i64 4
  %87 = bitcast i32* %86 to <4 x i32>*
  %88 = load <4 x i32>, <4 x i32>* %87, align 4, !tbaa !5
  %89 = icmp sgt <4 x i32> %79, %85
  %90 = icmp sgt <4 x i32> %80, %88
  %91 = select <4 x i1> %89, <4 x i32> %85, <4 x i32> %79
  %92 = select <4 x i1> %90, <4 x i32> %88, <4 x i32> %80
  %93 = add nuw i64 %66, 16
  %94 = add i64 %69, 2
  %95 = icmp eq i64 %94, %64
  br i1 %95, label %96, label %65, !llvm.loop !9

96:                                               ; preds = %65, %55
  %97 = phi <4 x i32> [ undef, %55 ], [ %91, %65 ]
  %98 = phi <4 x i32> [ undef, %55 ], [ %92, %65 ]
  %99 = phi i64 [ 0, %55 ], [ %93, %65 ]
  %100 = phi <4 x i32> [ <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, %55 ], [ %91, %65 ]
  %101 = phi <4 x i32> [ <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, %55 ], [ %92, %65 ]
  %102 = icmp eq i64 %61, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %96
  %104 = add i64 %31, %99
  %105 = getelementptr inbounds i32, i32* %9, i64 %104
  %106 = bitcast i32* %105 to <4 x i32>*
  %107 = load <4 x i32>, <4 x i32>* %106, align 4, !tbaa !5
  %108 = getelementptr inbounds i32, i32* %105, i64 4
  %109 = bitcast i32* %108 to <4 x i32>*
  %110 = load <4 x i32>, <4 x i32>* %109, align 4, !tbaa !5
  %111 = icmp sgt <4 x i32> %100, %107
  %112 = icmp sgt <4 x i32> %101, %110
  %113 = select <4 x i1> %111, <4 x i32> %107, <4 x i32> %100
  %114 = select <4 x i1> %112, <4 x i32> %110, <4 x i32> %101
  br label %115

115:                                              ; preds = %96, %103
  %116 = phi <4 x i32> [ %97, %96 ], [ %113, %103 ]
  %117 = phi <4 x i32> [ %98, %96 ], [ %114, %103 ]
  %118 = icmp slt <4 x i32> %116, %117
  %119 = select <4 x i1> %118, <4 x i32> %116, <4 x i32> %117
  %120 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %119)
  %121 = icmp eq i64 %53, %56
  br i1 %121, label %125, label %122

122:                                              ; preds = %45, %115
  %123 = phi i64 [ %31, %45 ], [ %57, %115 ]
  %124 = phi i32 [ 2147483647, %45 ], [ %120, %115 ]
  br label %130

125:                                              ; preds = %130, %115
  %126 = phi i32 [ %120, %115 ], [ %136, %130 ]
  %127 = icmp eq i32 %126, 2147483647
  %128 = add nsw i32 %126, 1
  %129 = select i1 %127, i32 2147483647, i32 %128
  br label %141

130:                                              ; preds = %122, %130
  %131 = phi i64 [ %137, %130 ], [ %123, %122 ]
  %132 = phi i32 [ %136, %130 ], [ %124, %122 ]
  %133 = getelementptr inbounds i32, i32* %9, i64 %131
  %134 = load i32, i32* %133, align 4, !tbaa !5
  %135 = icmp sgt i32 %132, %134
  %136 = select i1 %135, i32 %134, i32 %132
  %137 = add nsw i64 %131, 1
  %138 = icmp slt i64 %137, %3
  %139 = icmp slt i64 %131, %47
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %130, label %125, !llvm.loop !12

141:                                              ; preds = %125, %40, %36, %20
  %142 = phi i32 [ 2147483647, %20 ], [ 1, %36 ], [ 2147483647, %40 ], [ %129, %125 ]
  %143 = getelementptr inbounds i32, i32* %9, i64 %22
  store i32 %142, i32* %143, align 4, !tbaa !5
  %144 = add nsw i64 %22, -1
  %145 = icmp sgt i64 %22, 0
  %146 = add i64 %21, 1
  br i1 %145, label %20, label %18, !llvm.loop !14
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_NUMBER_OF_JUMPS_TO_REACH_END_OF_A_GIVEN_ARRAY_2_reprocessed.cpp() #6 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #10
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #8

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nosync nounwind readnone willreturn }
attributes #9 = { builtin allocsize(0) }
attributes #10 = { nounwind }

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
