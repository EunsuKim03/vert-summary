; ModuleID = 'benchmark/cpp_transcoder/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS/SUM_MANHATTAN_DISTANCES_PAIRS_POINTS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SUM_MANHATTAN_DISTANCES_PAIRS_POINTS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiS_i(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = zext i32 %2 to i64
  br label %14

8:                                                ; preds = %78, %71, %14
  %9 = phi i32 [ %17, %14 ], [ %73, %71 ], [ %90, %78 ]
  %10 = add nuw nsw i64 %16, 1
  %11 = icmp eq i64 %20, %7
  br i1 %11, label %12, label %14, !llvm.loop !5

12:                                               ; preds = %8, %3
  %13 = phi i32 [ 0, %3 ], [ %9, %8 ]
  ret i32 %13

14:                                               ; preds = %5, %8
  %15 = phi i64 [ 0, %5 ], [ %20, %8 ]
  %16 = phi i64 [ 1, %5 ], [ %10, %8 ]
  %17 = phi i32 [ 0, %5 ], [ %9, %8 ]
  %18 = xor i64 %15, -1
  %19 = add nsw i64 %18, %7
  %20 = add nuw nsw i64 %15, 1
  %21 = icmp ult i64 %20, %6
  br i1 %21, label %22, label %8

22:                                               ; preds = %14
  %23 = getelementptr inbounds i32, i32* %0, i64 %15
  %24 = load i32, i32* %23, align 4, !tbaa !7
  %25 = getelementptr inbounds i32, i32* %1, i64 %15
  %26 = load i32, i32* %25, align 4, !tbaa !7
  %27 = icmp ult i64 %19, 8
  br i1 %27, label %75, label %28

28:                                               ; preds = %22
  %29 = and i64 %19, -8
  %30 = add i64 %16, %29
  %31 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %17, i64 0
  %32 = insertelement <4 x i32> poison, i32 %24, i64 0
  %33 = shufflevector <4 x i32> %32, <4 x i32> poison, <4 x i32> zeroinitializer
  %34 = insertelement <4 x i32> poison, i32 %24, i64 0
  %35 = shufflevector <4 x i32> %34, <4 x i32> poison, <4 x i32> zeroinitializer
  %36 = insertelement <4 x i32> poison, i32 %26, i64 0
  %37 = shufflevector <4 x i32> %36, <4 x i32> poison, <4 x i32> zeroinitializer
  %38 = insertelement <4 x i32> poison, i32 %26, i64 0
  %39 = shufflevector <4 x i32> %38, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %40

40:                                               ; preds = %40, %28
  %41 = phi i64 [ 0, %28 ], [ %69, %40 ]
  %42 = phi <4 x i32> [ %31, %28 ], [ %67, %40 ]
  %43 = phi <4 x i32> [ zeroinitializer, %28 ], [ %68, %40 ]
  %44 = add i64 %16, %41
  %45 = getelementptr inbounds i32, i32* %0, i64 %44
  %46 = bitcast i32* %45 to <4 x i32>*
  %47 = load <4 x i32>, <4 x i32>* %46, align 4, !tbaa !7
  %48 = getelementptr inbounds i32, i32* %45, i64 4
  %49 = bitcast i32* %48 to <4 x i32>*
  %50 = load <4 x i32>, <4 x i32>* %49, align 4, !tbaa !7
  %51 = sub nsw <4 x i32> %33, %47
  %52 = sub nsw <4 x i32> %35, %50
  %53 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %51, i1 true)
  %54 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %52, i1 true)
  %55 = getelementptr inbounds i32, i32* %1, i64 %44
  %56 = bitcast i32* %55 to <4 x i32>*
  %57 = load <4 x i32>, <4 x i32>* %56, align 4, !tbaa !7
  %58 = getelementptr inbounds i32, i32* %55, i64 4
  %59 = bitcast i32* %58 to <4 x i32>*
  %60 = load <4 x i32>, <4 x i32>* %59, align 4, !tbaa !7
  %61 = sub nsw <4 x i32> %37, %57
  %62 = sub nsw <4 x i32> %39, %60
  %63 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %61, i1 true)
  %64 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %62, i1 true)
  %65 = add <4 x i32> %53, %42
  %66 = add <4 x i32> %54, %43
  %67 = add <4 x i32> %65, %63
  %68 = add <4 x i32> %66, %64
  %69 = add nuw i64 %41, 8
  %70 = icmp eq i64 %69, %29
  br i1 %70, label %71, label %40, !llvm.loop !11

71:                                               ; preds = %40
  %72 = add <4 x i32> %68, %67
  %73 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %72)
  %74 = icmp eq i64 %19, %29
  br i1 %74, label %8, label %75

75:                                               ; preds = %22, %71
  %76 = phi i64 [ %16, %22 ], [ %30, %71 ]
  %77 = phi i32 [ %17, %22 ], [ %73, %71 ]
  br label %78

78:                                               ; preds = %75, %78
  %79 = phi i64 [ %91, %78 ], [ %76, %75 ]
  %80 = phi i32 [ %90, %78 ], [ %77, %75 ]
  %81 = getelementptr inbounds i32, i32* %0, i64 %79
  %82 = load i32, i32* %81, align 4, !tbaa !7
  %83 = sub nsw i32 %24, %82
  %84 = tail call i32 @llvm.abs.i32(i32 %83, i1 true)
  %85 = getelementptr inbounds i32, i32* %1, i64 %79
  %86 = load i32, i32* %85, align 4, !tbaa !7
  %87 = sub nsw i32 %26, %86
  %88 = tail call i32 @llvm.abs.i32(i32 %87, i1 true)
  %89 = add i32 %84, %80
  %90 = add i32 %89, %88
  %91 = add nuw nsw i64 %79, 1
  %92 = icmp eq i64 %91, %7
  br i1 %92, label %8, label %78, !llvm.loop !13
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SUM_MANHATTAN_DISTANCES_PAIRS_POINTS_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #5

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }

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
