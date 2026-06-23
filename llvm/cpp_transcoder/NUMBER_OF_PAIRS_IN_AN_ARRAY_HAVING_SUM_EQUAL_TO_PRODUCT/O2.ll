; ModuleID = 'benchmark/cpp_transcoder/NUMBER_OF_PAIRS_IN_AN_ARRAY_HAVING_SUM_EQUAL_TO_PRODUCT/NUMBER_OF_PAIRS_IN_AN_ARRAY_HAVING_SUM_EQUAL_TO_PRODUCT_processed.cpp'
source_filename = "benchmark/cpp_transcoder/NUMBER_OF_PAIRS_IN_AN_ARRAY_HAVING_SUM_EQUAL_TO_PRODUCT/NUMBER_OF_PAIRS_IN_AN_ARRAY_HAVING_SUM_EQUAL_TO_PRODUCT_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_NUMBER_OF_PAIRS_IN_AN_ARRAY_HAVING_SUM_EQUAL_TO_PRODUCT_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %45

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = icmp ult i32 %1, 8
  br i1 %6, label %41, label %7

7:                                                ; preds = %4
  %8 = and i64 %5, 4294967288
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i64 [ 0, %7 ], [ %33, %9 ]
  %11 = phi <4 x i32> [ zeroinitializer, %7 ], [ %25, %9 ]
  %12 = phi <4 x i32> [ zeroinitializer, %7 ], [ %26, %9 ]
  %13 = phi <4 x i32> [ zeroinitializer, %7 ], [ %31, %9 ]
  %14 = phi <4 x i32> [ zeroinitializer, %7 ], [ %32, %9 ]
  %15 = getelementptr inbounds i32, i32* %0, i64 %10
  %16 = bitcast i32* %15 to <4 x i32>*
  %17 = load <4 x i32>, <4 x i32>* %16, align 4, !tbaa !5
  %18 = getelementptr inbounds i32, i32* %15, i64 4
  %19 = bitcast i32* %18 to <4 x i32>*
  %20 = load <4 x i32>, <4 x i32>* %19, align 4, !tbaa !5
  %21 = icmp eq <4 x i32> %17, zeroinitializer
  %22 = icmp eq <4 x i32> %20, zeroinitializer
  %23 = zext <4 x i1> %21 to <4 x i32>
  %24 = zext <4 x i1> %22 to <4 x i32>
  %25 = add <4 x i32> %11, %23
  %26 = add <4 x i32> %12, %24
  %27 = icmp eq <4 x i32> %17, <i32 2, i32 2, i32 2, i32 2>
  %28 = icmp eq <4 x i32> %20, <i32 2, i32 2, i32 2, i32 2>
  %29 = zext <4 x i1> %27 to <4 x i32>
  %30 = zext <4 x i1> %28 to <4 x i32>
  %31 = add <4 x i32> %13, %29
  %32 = add <4 x i32> %14, %30
  %33 = add nuw i64 %10, 8
  %34 = icmp eq i64 %33, %8
  br i1 %34, label %35, label %9, !llvm.loop !9

35:                                               ; preds = %9
  %36 = add <4 x i32> %32, %31
  %37 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %36)
  %38 = add <4 x i32> %26, %25
  %39 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %38)
  %40 = icmp eq i64 %8, %5
  br i1 %40, label %45, label %41

41:                                               ; preds = %4, %35
  %42 = phi i64 [ 0, %4 ], [ %8, %35 ]
  %43 = phi i32 [ 0, %4 ], [ %39, %35 ]
  %44 = phi i32 [ 0, %4 ], [ %37, %35 ]
  br label %55

45:                                               ; preds = %55, %35, %2
  %46 = phi i32 [ 0, %2 ], [ %37, %35 ], [ %66, %55 ]
  %47 = phi i32 [ 0, %2 ], [ %39, %35 ], [ %63, %55 ]
  %48 = add nsw i32 %47, -1
  %49 = mul nsw i32 %48, %47
  %50 = sdiv i32 %49, 2
  %51 = add nsw i32 %46, -1
  %52 = mul nsw i32 %51, %46
  %53 = sdiv i32 %52, 2
  %54 = add nsw i32 %50, %53
  ret i32 %54

55:                                               ; preds = %41, %55
  %56 = phi i64 [ %67, %55 ], [ %42, %41 ]
  %57 = phi i32 [ %63, %55 ], [ %43, %41 ]
  %58 = phi i32 [ %66, %55 ], [ %44, %41 ]
  %59 = getelementptr inbounds i32, i32* %0, i64 %56
  %60 = load i32, i32* %59, align 4, !tbaa !5
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = add nuw nsw i32 %57, %62
  %64 = icmp eq i32 %60, 2
  %65 = zext i1 %64 to i32
  %66 = add nuw nsw i32 %58, %65
  %67 = add nuw nsw i64 %56, 1
  %68 = icmp eq i64 %67, %5
  br i1 %68, label %45, label %55, !llvm.loop !12
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_NUMBER_OF_PAIRS_IN_AN_ARRAY_HAVING_SUM_EQUAL_TO_PRODUCT_processed.cpp() #4 section ".text.startup" {
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
