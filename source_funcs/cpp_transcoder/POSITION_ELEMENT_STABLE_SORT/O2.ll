; ModuleID = 'benchmark/cpp_transcoder/POSITION_ELEMENT_STABLE_SORT/POSITION_ELEMENT_STABLE_SORT_processed.cpp'
source_filename = "benchmark/cpp_transcoder/POSITION_ELEMENT_STABLE_SORT/POSITION_ELEMENT_STABLE_SORT_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_POSITION_ELEMENT_STABLE_SORT_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %59

5:                                                ; preds = %3
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  %8 = load i32, i32* %7, align 4, !tbaa !5
  %9 = zext i32 %1 to i64
  %10 = icmp ult i32 %1, 8
  br i1 %10, label %56, label %11

11:                                               ; preds = %5
  %12 = and i64 %9, 4294967288
  %13 = insertelement <4 x i32> poison, i32 %8, i64 0
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> zeroinitializer
  %15 = insertelement <4 x i32> poison, i32 %8, i64 0
  %16 = shufflevector <4 x i32> %15, <4 x i32> poison, <4 x i32> zeroinitializer
  %17 = insertelement <4 x i64> poison, i64 %6, i64 0
  %18 = shufflevector <4 x i64> %17, <4 x i64> poison, <4 x i32> zeroinitializer
  %19 = insertelement <4 x i64> poison, i64 %6, i64 0
  %20 = shufflevector <4 x i64> %19, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %21

21:                                               ; preds = %21, %11
  %22 = phi i64 [ 0, %11 ], [ %49, %21 ]
  %23 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %11 ], [ %50, %21 ]
  %24 = phi <4 x i32> [ zeroinitializer, %11 ], [ %47, %21 ]
  %25 = phi <4 x i32> [ zeroinitializer, %11 ], [ %48, %21 ]
  %26 = add <4 x i64> %23, <i64 4, i64 4, i64 4, i64 4>
  %27 = getelementptr inbounds i32, i32* %0, i64 %22
  %28 = bitcast i32* %27 to <4 x i32>*
  %29 = load <4 x i32>, <4 x i32>* %28, align 4, !tbaa !5
  %30 = getelementptr inbounds i32, i32* %27, i64 4
  %31 = bitcast i32* %30 to <4 x i32>*
  %32 = load <4 x i32>, <4 x i32>* %31, align 4, !tbaa !5
  %33 = icmp slt <4 x i32> %29, %14
  %34 = icmp slt <4 x i32> %32, %16
  %35 = zext <4 x i1> %33 to <4 x i32>
  %36 = zext <4 x i1> %34 to <4 x i32>
  %37 = add <4 x i32> %24, %35
  %38 = add <4 x i32> %25, %36
  %39 = icmp eq <4 x i32> %29, %14
  %40 = icmp eq <4 x i32> %32, %16
  %41 = icmp slt <4 x i64> %23, %18
  %42 = icmp slt <4 x i64> %26, %20
  %43 = select <4 x i1> %39, <4 x i1> %41, <4 x i1> zeroinitializer
  %44 = select <4 x i1> %40, <4 x i1> %42, <4 x i1> zeroinitializer
  %45 = zext <4 x i1> %43 to <4 x i32>
  %46 = zext <4 x i1> %44 to <4 x i32>
  %47 = add <4 x i32> %37, %45
  %48 = add <4 x i32> %38, %46
  %49 = add nuw i64 %22, 8
  %50 = add <4 x i64> %23, <i64 8, i64 8, i64 8, i64 8>
  %51 = icmp eq i64 %49, %12
  br i1 %51, label %52, label %21, !llvm.loop !9

52:                                               ; preds = %21
  %53 = add <4 x i32> %48, %47
  %54 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %53)
  %55 = icmp eq i64 %12, %9
  br i1 %55, label %59, label %56

56:                                               ; preds = %5, %52
  %57 = phi i64 [ 0, %5 ], [ %12, %52 ]
  %58 = phi i32 [ 0, %5 ], [ %54, %52 ]
  br label %61

59:                                               ; preds = %61, %52, %3
  %60 = phi i32 [ 0, %3 ], [ %54, %52 ], [ %73, %61 ]
  ret i32 %60

61:                                               ; preds = %56, %61
  %62 = phi i64 [ %74, %61 ], [ %57, %56 ]
  %63 = phi i32 [ %73, %61 ], [ %58, %56 ]
  %64 = getelementptr inbounds i32, i32* %0, i64 %62
  %65 = load i32, i32* %64, align 4, !tbaa !5
  %66 = icmp slt i32 %65, %8
  %67 = zext i1 %66 to i32
  %68 = add nsw i32 %63, %67
  %69 = icmp eq i32 %65, %8
  %70 = icmp slt i64 %62, %6
  %71 = select i1 %69, i1 %70, i1 false
  %72 = zext i1 %71 to i32
  %73 = add nsw i32 %68, %72
  %74 = add nuw nsw i64 %62, 1
  %75 = icmp eq i64 %74, %9
  br i1 %75, label %59, label %61, !llvm.loop !12
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_POSITION_ELEMENT_STABLE_SORT_processed.cpp() #4 section ".text.startup" {
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
