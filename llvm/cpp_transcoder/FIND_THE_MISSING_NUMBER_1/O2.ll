; ModuleID = 'benchmark/cpp_transcoder/FIND_THE_MISSING_NUMBER_1/FIND_THE_MISSING_NUMBER_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FIND_THE_MISSING_NUMBER_1/FIND_THE_MISSING_NUMBER_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_THE_MISSING_NUMBER_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %93, label %4

4:                                                ; preds = %2
  %5 = add nuw i32 %1, 2
  %6 = zext i32 %5 to i64
  %7 = add nsw i64 %6, -2
  %8 = icmp ult i64 %7, 8
  br i1 %8, label %79, label %9

9:                                                ; preds = %4
  %10 = and i64 %7, -8
  %11 = or i64 %10, 2
  %12 = add nsw i64 %10, -8
  %13 = lshr exact i64 %12, 3
  %14 = add nuw nsw i64 %13, 1
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %12, 0
  br i1 %16, label %53, label %17

17:                                               ; preds = %9
  %18 = and i64 %14, 4611686018427387902
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i64 [ 0, %17 ], [ %49, %19 ]
  %21 = phi <4 x i32> [ <i32 1, i32 0, i32 0, i32 0>, %17 ], [ %45, %19 ]
  %22 = phi <4 x i32> [ zeroinitializer, %17 ], [ %48, %19 ]
  %23 = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %17 ], [ %50, %19 ]
  %24 = phi i64 [ 0, %17 ], [ %51, %19 ]
  %25 = add <4 x i32> %23, <i32 4, i32 4, i32 4, i32 4>
  %26 = add <4 x i32> %21, %23
  %27 = add <4 x i32> %22, %25
  %28 = getelementptr inbounds i32, i32* %0, i64 %20
  %29 = bitcast i32* %28 to <4 x i32>*
  %30 = load <4 x i32>, <4 x i32>* %29, align 4, !tbaa !5
  %31 = getelementptr inbounds i32, i32* %28, i64 4
  %32 = bitcast i32* %31 to <4 x i32>*
  %33 = load <4 x i32>, <4 x i32>* %32, align 4, !tbaa !5
  %34 = or i64 %20, 8
  %35 = add <4 x i32> %23, <i32 8, i32 8, i32 8, i32 8>
  %36 = add <4 x i32> %23, <i32 12, i32 12, i32 12, i32 12>
  %37 = getelementptr inbounds i32, i32* %0, i64 %34
  %38 = bitcast i32* %37 to <4 x i32>*
  %39 = load <4 x i32>, <4 x i32>* %38, align 4, !tbaa !5
  %40 = getelementptr inbounds i32, i32* %37, i64 4
  %41 = bitcast i32* %40 to <4 x i32>*
  %42 = load <4 x i32>, <4 x i32>* %41, align 4, !tbaa !5
  %43 = add <4 x i32> %26, %35
  %44 = add <4 x i32> %30, %39
  %45 = sub <4 x i32> %43, %44
  %46 = add <4 x i32> %27, %36
  %47 = add <4 x i32> %33, %42
  %48 = sub <4 x i32> %46, %47
  %49 = add nuw i64 %20, 16
  %50 = add <4 x i32> %23, <i32 16, i32 16, i32 16, i32 16>
  %51 = add i64 %24, 2
  %52 = icmp eq i64 %51, %18
  br i1 %52, label %53, label %19, !llvm.loop !9

53:                                               ; preds = %19, %9
  %54 = phi <4 x i32> [ undef, %9 ], [ %45, %19 ]
  %55 = phi <4 x i32> [ undef, %9 ], [ %48, %19 ]
  %56 = phi i64 [ 0, %9 ], [ %49, %19 ]
  %57 = phi <4 x i32> [ <i32 1, i32 0, i32 0, i32 0>, %9 ], [ %45, %19 ]
  %58 = phi <4 x i32> [ zeroinitializer, %9 ], [ %48, %19 ]
  %59 = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %9 ], [ %50, %19 ]
  %60 = icmp eq i64 %15, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %53
  %62 = add <4 x i32> %59, <i32 4, i32 4, i32 4, i32 4>
  %63 = add <4 x i32> %57, %59
  %64 = add <4 x i32> %58, %62
  %65 = getelementptr inbounds i32, i32* %0, i64 %56
  %66 = bitcast i32* %65 to <4 x i32>*
  %67 = load <4 x i32>, <4 x i32>* %66, align 4, !tbaa !5
  %68 = getelementptr inbounds i32, i32* %65, i64 4
  %69 = bitcast i32* %68 to <4 x i32>*
  %70 = load <4 x i32>, <4 x i32>* %69, align 4, !tbaa !5
  %71 = sub <4 x i32> %63, %67
  %72 = sub <4 x i32> %64, %70
  br label %73

73:                                               ; preds = %53, %61
  %74 = phi <4 x i32> [ %54, %53 ], [ %71, %61 ]
  %75 = phi <4 x i32> [ %55, %53 ], [ %72, %61 ]
  %76 = add <4 x i32> %75, %74
  %77 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %76)
  %78 = icmp eq i64 %7, %10
  br i1 %78, label %93, label %79

79:                                               ; preds = %4, %73
  %80 = phi i64 [ 2, %4 ], [ %11, %73 ]
  %81 = phi i32 [ 1, %4 ], [ %77, %73 ]
  br label %82

82:                                               ; preds = %79, %82
  %83 = phi i64 [ %91, %82 ], [ %80, %79 ]
  %84 = phi i32 [ %90, %82 ], [ %81, %79 ]
  %85 = trunc i64 %83 to i32
  %86 = add nsw i32 %84, %85
  %87 = add nsw i64 %83, -2
  %88 = getelementptr inbounds i32, i32* %0, i64 %87
  %89 = load i32, i32* %88, align 4, !tbaa !5
  %90 = sub i32 %86, %89
  %91 = add nuw nsw i64 %83, 1
  %92 = icmp eq i64 %91, %6
  br i1 %92, label %93, label %82, !llvm.loop !12

93:                                               ; preds = %82, %73, %2
  %94 = phi i32 [ 1, %2 ], [ %77, %73 ], [ %90, %82 ]
  ret i32 %94
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_THE_MISSING_NUMBER_1_processed.cpp() #4 section ".text.startup" {
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
