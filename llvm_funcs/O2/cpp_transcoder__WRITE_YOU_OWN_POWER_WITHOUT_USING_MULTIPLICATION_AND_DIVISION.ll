; ModuleID = 'benchmark/cpp_transcoder/WRITE_YOU_OWN_POWER_WITHOUT_USING_MULTIPLICATION_AND_DIVISION/WRITE_YOU_OWN_POWER_WITHOUT_USING_MULTIPLICATION_AND_DIVISION_processed.cpp'
source_filename = "benchmark/cpp_transcoder/WRITE_YOU_OWN_POWER_WITHOUT_USING_MULTIPLICATION_AND_DIVISION/WRITE_YOU_OWN_POWER_WITHOUT_USING_MULTIPLICATION_AND_DIVISION_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_WRITE_YOU_OWN_POWER_WITHOUT_USING_MULTIPLICATION_AND_DIVISION_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %80, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 1
  br i1 %5, label %6, label %80

6:                                                ; preds = %4
  %7 = icmp sgt i32 %0, 1
  %8 = add i32 %1, -1
  %9 = icmp ult i32 %8, 8
  br i1 %9, label %70, label %10

10:                                               ; preds = %6
  %11 = and i32 %8, -8
  %12 = or i32 %11, 1
  %13 = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %0, i64 0
  %14 = insertelement <4 x i32> poison, i32 %0, i64 0
  %15 = shufflevector <4 x i32> %14, <4 x i32> poison, <4 x i32> zeroinitializer
  %16 = insertelement <4 x i32> poison, i32 %0, i64 0
  %17 = shufflevector <4 x i32> %16, <4 x i32> poison, <4 x i32> zeroinitializer
  %18 = add i32 %11, -8
  %19 = lshr exact i32 %18, 3
  %20 = add nuw nsw i32 %19, 1
  %21 = and i32 %20, 3
  %22 = icmp ult i32 %18, 24
  br i1 %22, label %47, label %23

23:                                               ; preds = %10
  %24 = and i32 %20, 1073741820
  %25 = select i1 %7, <4 x i32> %15, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %26 = select i1 %7, <4 x i32> %17, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %27 = select i1 %7, <4 x i32> %15, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %28 = select i1 %7, <4 x i32> %17, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %29 = select i1 %7, <4 x i32> %15, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %30 = select i1 %7, <4 x i32> %17, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %31 = select i1 %7, <4 x i32> %15, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %32 = select i1 %7, <4 x i32> %17, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %33

33:                                               ; preds = %33, %23
  %34 = phi <4 x i32> [ %13, %23 ], [ %43, %33 ]
  %35 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %23 ], [ %44, %33 ]
  %36 = phi i32 [ 0, %23 ], [ %45, %33 ]
  %37 = mul <4 x i32> %34, %25
  %38 = mul <4 x i32> %35, %26
  %39 = mul <4 x i32> %37, %27
  %40 = mul <4 x i32> %38, %28
  %41 = mul <4 x i32> %39, %29
  %42 = mul <4 x i32> %40, %30
  %43 = mul <4 x i32> %41, %31
  %44 = mul <4 x i32> %42, %32
  %45 = add i32 %36, 4
  %46 = icmp eq i32 %45, %24
  br i1 %46, label %47, label %33, !llvm.loop !5

47:                                               ; preds = %33, %10
  %48 = phi <4 x i32> [ undef, %10 ], [ %43, %33 ]
  %49 = phi <4 x i32> [ undef, %10 ], [ %44, %33 ]
  %50 = phi <4 x i32> [ %13, %10 ], [ %43, %33 ]
  %51 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %10 ], [ %44, %33 ]
  %52 = icmp eq i32 %21, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %47
  %54 = select i1 %7, <4 x i32> %15, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %55 = select i1 %7, <4 x i32> %17, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %56

56:                                               ; preds = %56, %53
  %57 = phi <4 x i32> [ %50, %53 ], [ %60, %56 ]
  %58 = phi <4 x i32> [ %51, %53 ], [ %61, %56 ]
  %59 = phi i32 [ 0, %53 ], [ %62, %56 ]
  %60 = mul <4 x i32> %57, %54
  %61 = mul <4 x i32> %58, %55
  %62 = add i32 %59, 1
  %63 = icmp eq i32 %62, %21
  br i1 %63, label %64, label %56, !llvm.loop !8

64:                                               ; preds = %56, %47
  %65 = phi <4 x i32> [ %48, %47 ], [ %60, %56 ]
  %66 = phi <4 x i32> [ %49, %47 ], [ %61, %56 ]
  %67 = mul <4 x i32> %66, %65
  %68 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %67)
  %69 = icmp eq i32 %8, %11
  br i1 %69, label %80, label %70

70:                                               ; preds = %6, %64
  %71 = phi i32 [ 1, %6 ], [ %12, %64 ]
  %72 = phi i32 [ %0, %6 ], [ %68, %64 ]
  %73 = select i1 %7, i32 %0, i32 1
  br label %74

74:                                               ; preds = %70, %74
  %75 = phi i32 [ %78, %74 ], [ %71, %70 ]
  %76 = phi i32 [ %77, %74 ], [ %72, %70 ]
  %77 = mul i32 %76, %73
  %78 = add nuw nsw i32 %75, 1
  %79 = icmp eq i32 %78, %1
  br i1 %79, label %80, label %74, !llvm.loop !10

80:                                               ; preds = %74, %64, %4, %2
  %81 = phi i32 [ 1, %2 ], [ %0, %4 ], [ %68, %64 ], [ %77, %74 ]
  ret i32 %81
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_WRITE_YOU_OWN_POWER_WITHOUT_USING_MULTIPLICATION_AND_DIVISION_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !6, !11, !7}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
