; ModuleID = 'benchmark/cpp_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K/COUNT_PAIRS_DIFFERENCE_EQUAL_K_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_PAIRS_DIFFERENCE_EQUAL_K/COUNT_PAIRS_DIFFERENCE_EQUAL_K_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_PAIRS_DIFFERENCE_EQUAL_K_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = zext i32 %1 to i64
  %8 = insertelement <4 x i32> poison, i32 %2, i64 0
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> zeroinitializer
  %10 = insertelement <4 x i32> poison, i32 %2, i64 0
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %18

12:                                               ; preds = %72, %65, %18
  %13 = phi i32 [ %21, %18 ], [ %67, %65 ], [ %83, %72 ]
  %14 = add nuw nsw i64 %20, 1
  %15 = icmp eq i64 %24, %7
  br i1 %15, label %16, label %18, !llvm.loop !5

16:                                               ; preds = %12, %3
  %17 = phi i32 [ 0, %3 ], [ %13, %12 ]
  ret i32 %17

18:                                               ; preds = %5, %12
  %19 = phi i64 [ 0, %5 ], [ %24, %12 ]
  %20 = phi i64 [ 1, %5 ], [ %14, %12 ]
  %21 = phi i32 [ 0, %5 ], [ %13, %12 ]
  %22 = xor i64 %19, -1
  %23 = add nsw i64 %22, %7
  %24 = add nuw nsw i64 %19, 1
  %25 = icmp ult i64 %24, %6
  br i1 %25, label %26, label %12

26:                                               ; preds = %18
  %27 = getelementptr inbounds i32, i32* %0, i64 %19
  %28 = load i32, i32* %27, align 4, !tbaa !7
  %29 = icmp ult i64 %23, 8
  br i1 %29, label %69, label %30

30:                                               ; preds = %26
  %31 = and i64 %23, -8
  %32 = add i64 %20, %31
  %33 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %21, i64 0
  %34 = insertelement <4 x i32> poison, i32 %28, i64 0
  %35 = shufflevector <4 x i32> %34, <4 x i32> poison, <4 x i32> zeroinitializer
  %36 = insertelement <4 x i32> poison, i32 %28, i64 0
  %37 = shufflevector <4 x i32> %36, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %38

38:                                               ; preds = %38, %30
  %39 = phi i64 [ 0, %30 ], [ %63, %38 ]
  %40 = phi <4 x i32> [ %33, %30 ], [ %61, %38 ]
  %41 = phi <4 x i32> [ zeroinitializer, %30 ], [ %62, %38 ]
  %42 = add i64 %20, %39
  %43 = getelementptr inbounds i32, i32* %0, i64 %42
  %44 = bitcast i32* %43 to <4 x i32>*
  %45 = load <4 x i32>, <4 x i32>* %44, align 4, !tbaa !7
  %46 = getelementptr inbounds i32, i32* %43, i64 4
  %47 = bitcast i32* %46 to <4 x i32>*
  %48 = load <4 x i32>, <4 x i32>* %47, align 4, !tbaa !7
  %49 = sub nsw <4 x i32> %35, %45
  %50 = sub nsw <4 x i32> %37, %48
  %51 = icmp eq <4 x i32> %49, %9
  %52 = icmp eq <4 x i32> %50, %11
  %53 = sub nsw <4 x i32> %45, %35
  %54 = sub nsw <4 x i32> %48, %37
  %55 = icmp eq <4 x i32> %53, %9
  %56 = icmp eq <4 x i32> %54, %11
  %57 = select <4 x i1> %51, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %55
  %58 = select <4 x i1> %52, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %56
  %59 = zext <4 x i1> %57 to <4 x i32>
  %60 = zext <4 x i1> %58 to <4 x i32>
  %61 = add <4 x i32> %40, %59
  %62 = add <4 x i32> %41, %60
  %63 = add nuw i64 %39, 8
  %64 = icmp eq i64 %63, %31
  br i1 %64, label %65, label %38, !llvm.loop !11

65:                                               ; preds = %38
  %66 = add <4 x i32> %62, %61
  %67 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %66)
  %68 = icmp eq i64 %23, %31
  br i1 %68, label %12, label %69

69:                                               ; preds = %26, %65
  %70 = phi i64 [ %20, %26 ], [ %32, %65 ]
  %71 = phi i32 [ %21, %26 ], [ %67, %65 ]
  br label %72

72:                                               ; preds = %69, %72
  %73 = phi i64 [ %84, %72 ], [ %70, %69 ]
  %74 = phi i32 [ %83, %72 ], [ %71, %69 ]
  %75 = getelementptr inbounds i32, i32* %0, i64 %73
  %76 = load i32, i32* %75, align 4, !tbaa !7
  %77 = sub nsw i32 %28, %76
  %78 = icmp eq i32 %77, %2
  %79 = sub nsw i32 %76, %28
  %80 = icmp eq i32 %79, %2
  %81 = select i1 %78, i1 true, i1 %80
  %82 = zext i1 %81 to i32
  %83 = add nsw i32 %74, %82
  %84 = add nuw nsw i64 %73, 1
  %85 = icmp eq i64 %84, %7
  br i1 %85, label %12, label %72, !llvm.loop !13
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_PAIRS_DIFFERENCE_EQUAL_K_processed.cpp() #4 section ".text.startup" {
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
