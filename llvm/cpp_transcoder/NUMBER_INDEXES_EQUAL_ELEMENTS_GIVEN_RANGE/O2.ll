; ModuleID = 'benchmark/cpp_transcoder/NUMBER_INDEXES_EQUAL_ELEMENTS_GIVEN_RANGE/NUMBER_INDEXES_EQUAL_ELEMENTS_GIVEN_RANGE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/NUMBER_INDEXES_EQUAL_ELEMENTS_GIVEN_RANGE/NUMBER_INDEXES_EQUAL_ELEMENTS_GIVEN_RANGE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_NUMBER_INDEXES_EQUAL_ELEMENTS_GIVEN_RANGE_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = icmp slt i32 %2, %3
  br i1 %5, label %6, label %49

6:                                                ; preds = %4
  %7 = sext i32 %2 to i64
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %7
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %11 = sub nsw i64 %8, %7
  %12 = icmp ult i64 %11, 8
  br i1 %12, label %45, label %13

13:                                               ; preds = %6
  %14 = and i64 %11, -8
  %15 = add nsw i64 %14, %7
  %16 = insertelement <4 x i32> poison, i32 %10, i64 3
  br label %17

17:                                               ; preds = %17, %13
  %18 = phi i64 [ 0, %13 ], [ %38, %17 ]
  %19 = phi <4 x i32> [ %16, %13 ], [ %29, %17 ]
  %20 = phi <4 x i32> [ zeroinitializer, %13 ], [ %36, %17 ]
  %21 = phi <4 x i32> [ zeroinitializer, %13 ], [ %37, %17 ]
  %22 = add i64 %18, %7
  %23 = add nsw i64 %22, 1
  %24 = getelementptr inbounds i32, i32* %0, i64 %23
  %25 = bitcast i32* %24 to <4 x i32>*
  %26 = load <4 x i32>, <4 x i32>* %25, align 4, !tbaa !5
  %27 = getelementptr inbounds i32, i32* %24, i64 4
  %28 = bitcast i32* %27 to <4 x i32>*
  %29 = load <4 x i32>, <4 x i32>* %28, align 4, !tbaa !5
  %30 = shufflevector <4 x i32> %19, <4 x i32> %26, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %31 = shufflevector <4 x i32> %26, <4 x i32> %29, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %32 = icmp eq <4 x i32> %30, %26
  %33 = icmp eq <4 x i32> %31, %29
  %34 = zext <4 x i1> %32 to <4 x i32>
  %35 = zext <4 x i1> %33 to <4 x i32>
  %36 = add <4 x i32> %20, %34
  %37 = add <4 x i32> %21, %35
  %38 = add nuw i64 %18, 8
  %39 = icmp eq i64 %38, %14
  br i1 %39, label %40, label %17, !llvm.loop !9

40:                                               ; preds = %17
  %41 = add <4 x i32> %37, %36
  %42 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %41)
  %43 = icmp eq i64 %11, %14
  %44 = extractelement <4 x i32> %29, i64 3
  br i1 %43, label %49, label %45

45:                                               ; preds = %6, %40
  %46 = phi i32 [ %44, %40 ], [ %10, %6 ]
  %47 = phi i64 [ %15, %40 ], [ %7, %6 ]
  %48 = phi i32 [ %42, %40 ], [ 0, %6 ]
  br label %51

49:                                               ; preds = %51, %40, %4
  %50 = phi i32 [ 0, %4 ], [ %42, %40 ], [ %60, %51 ]
  ret i32 %50

51:                                               ; preds = %45, %51
  %52 = phi i32 [ %57, %51 ], [ %46, %45 ]
  %53 = phi i64 [ %55, %51 ], [ %47, %45 ]
  %54 = phi i32 [ %60, %51 ], [ %48, %45 ]
  %55 = add nsw i64 %53, 1
  %56 = getelementptr inbounds i32, i32* %0, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !5
  %58 = icmp eq i32 %52, %57
  %59 = zext i1 %58 to i32
  %60 = add nuw nsw i32 %54, %59
  %61 = icmp eq i64 %55, %8
  br i1 %61, label %49, label %51, !llvm.loop !12
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_NUMBER_INDEXES_EQUAL_ELEMENTS_GIVEN_RANGE_processed.cpp() #4 section ".text.startup" {
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
