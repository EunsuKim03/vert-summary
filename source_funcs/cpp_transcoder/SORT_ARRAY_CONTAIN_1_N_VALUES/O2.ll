; ModuleID = 'benchmark/cpp_transcoder/SORT_ARRAY_CONTAIN_1_N_VALUES/SORT_ARRAY_CONTAIN_1_N_VALUES_processed.cpp'
source_filename = "benchmark/cpp_transcoder/SORT_ARRAY_CONTAIN_1_N_VALUES/SORT_ARRAY_CONTAIN_1_N_VALUES_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SORT_ARRAY_CONTAIN_1_N_VALUES_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable writeonly
define dso_local void @_Z6f_goldPii(i32* nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %59

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = icmp ult i32 %1, 8
  br i1 %6, label %57, label %7

7:                                                ; preds = %4
  %8 = and i64 %5, 4294967288
  %9 = add nsw i64 %8, -8
  %10 = lshr exact i64 %9, 3
  %11 = add nuw nsw i64 %10, 1
  %12 = and i64 %11, 1
  %13 = icmp eq i64 %9, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %7
  %15 = and i64 %11, 4611686018427387902
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %38, %16 ]
  %18 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %14 ], [ %39, %16 ]
  %19 = phi i64 [ 0, %14 ], [ %40, %16 ]
  %20 = getelementptr inbounds i32, i32* %0, i64 %17
  %21 = trunc <4 x i64> %18 to <4 x i32>
  %22 = add <4 x i32> %21, <i32 1, i32 1, i32 1, i32 1>
  %23 = trunc <4 x i64> %18 to <4 x i32>
  %24 = add <4 x i32> %23, <i32 5, i32 5, i32 5, i32 5>
  %25 = bitcast i32* %20 to <4 x i32>*
  store <4 x i32> %22, <4 x i32>* %25, align 4, !tbaa !5
  %26 = getelementptr inbounds i32, i32* %20, i64 4
  %27 = bitcast i32* %26 to <4 x i32>*
  store <4 x i32> %24, <4 x i32>* %27, align 4, !tbaa !5
  %28 = or i64 %17, 8
  %29 = add <4 x i64> %18, <i64 8, i64 8, i64 8, i64 8>
  %30 = getelementptr inbounds i32, i32* %0, i64 %28
  %31 = trunc <4 x i64> %29 to <4 x i32>
  %32 = add <4 x i32> %31, <i32 1, i32 1, i32 1, i32 1>
  %33 = trunc <4 x i64> %29 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 5, i32 5, i32 5, i32 5>
  %35 = bitcast i32* %30 to <4 x i32>*
  store <4 x i32> %32, <4 x i32>* %35, align 4, !tbaa !5
  %36 = getelementptr inbounds i32, i32* %30, i64 4
  %37 = bitcast i32* %36 to <4 x i32>*
  store <4 x i32> %34, <4 x i32>* %37, align 4, !tbaa !5
  %38 = add nuw i64 %17, 16
  %39 = add <4 x i64> %18, <i64 16, i64 16, i64 16, i64 16>
  %40 = add i64 %19, 2
  %41 = icmp eq i64 %40, %15
  br i1 %41, label %42, label %16, !llvm.loop !9

42:                                               ; preds = %16
  %43 = trunc <4 x i64> %39 to <4 x i32>
  br label %44

44:                                               ; preds = %42, %7
  %45 = phi i64 [ 0, %7 ], [ %38, %42 ]
  %46 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %7 ], [ %43, %42 ]
  %47 = icmp eq i64 %12, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds i32, i32* %0, i64 %45
  %50 = add <4 x i32> %46, <i32 1, i32 1, i32 1, i32 1>
  %51 = add <4 x i32> %46, <i32 5, i32 5, i32 5, i32 5>
  %52 = bitcast i32* %49 to <4 x i32>*
  store <4 x i32> %50, <4 x i32>* %52, align 4, !tbaa !5
  %53 = getelementptr inbounds i32, i32* %49, i64 4
  %54 = bitcast i32* %53 to <4 x i32>*
  store <4 x i32> %51, <4 x i32>* %54, align 4, !tbaa !5
  br label %55

55:                                               ; preds = %44, %48
  %56 = icmp eq i64 %8, %5
  br i1 %56, label %59, label %57

57:                                               ; preds = %4, %55
  %58 = phi i64 [ 0, %4 ], [ %8, %55 ]
  br label %60

59:                                               ; preds = %60, %55, %2
  ret void

60:                                               ; preds = %57, %60
  %61 = phi i64 [ %62, %60 ], [ %58, %57 ]
  %62 = add nuw nsw i64 %61, 1
  %63 = getelementptr inbounds i32, i32* %0, i64 %61
  %64 = trunc i64 %62 to i32
  store i32 %64, i32* %63, align 4, !tbaa !5
  %65 = icmp eq i64 %62, %5
  br i1 %65, label %59, label %60, !llvm.loop !12
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SORT_ARRAY_CONTAIN_1_N_VALUES_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
