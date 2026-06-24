; ModuleID = 'benchmark/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_36_CUT_A_ROPE_TO_MAXIMIZE_PRODUCT_1/DYNAMIC_PROGRAMMING_SET_36_CUT_A_ROPE_TO_MAXIMIZE_PRODUCT_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_36_CUT_A_ROPE_TO_MAXIMIZE_PRODUCT_1/DYNAMIC_PROGRAMMING_SET_36_CUT_A_ROPE_TO_MAXIMIZE_PRODUCT_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_36_CUT_A_ROPE_TO_MAXIMIZE_PRODUCT_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = and i32 %0, -2
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %55, label %4

4:                                                ; preds = %1
  %5 = icmp sgt i32 %0, 4
  br i1 %5, label %6, label %63

6:                                                ; preds = %4
  %7 = add i32 %0, 2
  %8 = call i32 @llvm.umin.i32(i32 %0, i32 7)
  %9 = sub i32 %7, %8
  %10 = udiv i32 %9, 3
  %11 = add nuw nsw i32 %10, 1
  %12 = icmp ult i32 %9, 21
  br i1 %12, label %52, label %13

13:                                               ; preds = %6
  %14 = and i32 %11, 2147483640
  %15 = mul i32 %14, -3
  %16 = add i32 %15, %0
  %17 = add nsw i32 %14, -8
  %18 = lshr exact i32 %17, 3
  %19 = add nuw nsw i32 %18, 1
  %20 = and i32 %19, 7
  %21 = icmp ult i32 %17, 56
  br i1 %21, label %32, label %22

22:                                               ; preds = %13
  %23 = and i32 %19, 1073741816
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %22 ], [ %28, %24 ]
  %26 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %22 ], [ %29, %24 ]
  %27 = phi i32 [ 0, %22 ], [ %30, %24 ]
  %28 = mul <4 x i32> %25, <i32 6561, i32 6561, i32 6561, i32 6561>
  %29 = mul <4 x i32> %26, <i32 6561, i32 6561, i32 6561, i32 6561>
  %30 = add nuw i32 %27, 8
  %31 = icmp eq i32 %30, %23
  br i1 %31, label %32, label %24, !llvm.loop !5

32:                                               ; preds = %24, %13
  %33 = phi <4 x i32> [ undef, %13 ], [ %28, %24 ]
  %34 = phi <4 x i32> [ undef, %13 ], [ %29, %24 ]
  %35 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %13 ], [ %28, %24 ]
  %36 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %13 ], [ %29, %24 ]
  %37 = icmp eq i32 %20, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %32, %38
  %39 = phi <4 x i32> [ %42, %38 ], [ %35, %32 ]
  %40 = phi <4 x i32> [ %43, %38 ], [ %36, %32 ]
  %41 = phi i32 [ %44, %38 ], [ 0, %32 ]
  %42 = mul <4 x i32> %39, <i32 3, i32 3, i32 3, i32 3>
  %43 = mul <4 x i32> %40, <i32 3, i32 3, i32 3, i32 3>
  %44 = add i32 %41, 1
  %45 = icmp eq i32 %44, %20
  br i1 %45, label %46, label %38, !llvm.loop !8

46:                                               ; preds = %38, %32
  %47 = phi <4 x i32> [ %33, %32 ], [ %42, %38 ]
  %48 = phi <4 x i32> [ %34, %32 ], [ %43, %38 ]
  %49 = mul <4 x i32> %48, %47
  %50 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %49)
  %51 = icmp eq i32 %11, %14
  br i1 %51, label %63, label %52

52:                                               ; preds = %6, %46
  %53 = phi i32 [ 1, %6 ], [ %50, %46 ]
  %54 = phi i32 [ %0, %6 ], [ %16, %46 ]
  br label %57

55:                                               ; preds = %1
  %56 = add nsw i32 %0, -1
  br label %67

57:                                               ; preds = %52, %57
  %58 = phi i32 [ %61, %57 ], [ %53, %52 ]
  %59 = phi i32 [ %60, %57 ], [ %54, %52 ]
  %60 = add nsw i32 %59, -3
  %61 = mul nsw i32 %58, 3
  %62 = icmp ugt i32 %59, 7
  br i1 %62, label %57, label %63, !llvm.loop !10

63:                                               ; preds = %57, %46, %4
  %64 = phi i32 [ %0, %4 ], [ %16, %46 ], [ %60, %57 ]
  %65 = phi i32 [ 1, %4 ], [ %50, %46 ], [ %61, %57 ]
  %66 = mul nsw i32 %65, %64
  br label %67

67:                                               ; preds = %63, %55
  %68 = phi i32 [ %56, %55 ], [ %66, %63 ]
  ret i32 %68
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_36_CUT_A_ROPE_TO_MAXIMIZE_PRODUCT_1_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #6

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !6, !11, !7}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
