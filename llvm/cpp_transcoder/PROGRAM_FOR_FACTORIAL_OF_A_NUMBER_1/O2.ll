; ModuleID = 'benchmark/cpp_transcoder/PROGRAM_FOR_FACTORIAL_OF_A_NUMBER_1/PROGRAM_FOR_FACTORIAL_OF_A_NUMBER_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/PROGRAM_FOR_FACTORIAL_OF_A_NUMBER_1/PROGRAM_FOR_FACTORIAL_OF_A_NUMBER_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_PROGRAM_FOR_FACTORIAL_OF_A_NUMBER_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldj(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %72, label %3

3:                                                ; preds = %1
  %4 = add i32 %0, -1
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %63, label %6

6:                                                ; preds = %3
  %7 = and i32 %4, -8
  %8 = or i32 %7, 2
  %9 = add i32 %7, -8
  %10 = lshr exact i32 %9, 3
  %11 = add nuw nsw i32 %10, 1
  %12 = and i32 %11, 3
  %13 = icmp ult i32 %9, 24
  br i1 %13, label %39, label %14

14:                                               ; preds = %6
  %15 = and i32 %11, 1073741820
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %14 ], [ %36, %16 ]
  %18 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %14 ], [ %34, %16 ]
  %19 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %14 ], [ %35, %16 ]
  %20 = phi i32 [ 0, %14 ], [ %37, %16 ]
  %21 = add <4 x i32> %17, <i32 4, i32 4, i32 4, i32 4>
  %22 = mul <4 x i32> %17, %18
  %23 = mul <4 x i32> %21, %19
  %24 = add <4 x i32> %17, <i32 8, i32 8, i32 8, i32 8>
  %25 = add <4 x i32> %17, <i32 12, i32 12, i32 12, i32 12>
  %26 = mul <4 x i32> %24, %22
  %27 = mul <4 x i32> %25, %23
  %28 = add <4 x i32> %17, <i32 16, i32 16, i32 16, i32 16>
  %29 = add <4 x i32> %17, <i32 20, i32 20, i32 20, i32 20>
  %30 = mul <4 x i32> %28, %26
  %31 = mul <4 x i32> %29, %27
  %32 = add <4 x i32> %17, <i32 24, i32 24, i32 24, i32 24>
  %33 = add <4 x i32> %17, <i32 28, i32 28, i32 28, i32 28>
  %34 = mul <4 x i32> %32, %30
  %35 = mul <4 x i32> %33, %31
  %36 = add <4 x i32> %17, <i32 32, i32 32, i32 32, i32 32>
  %37 = add i32 %20, 4
  %38 = icmp eq i32 %37, %15
  br i1 %38, label %39, label %16, !llvm.loop !5

39:                                               ; preds = %16, %6
  %40 = phi <4 x i32> [ undef, %6 ], [ %34, %16 ]
  %41 = phi <4 x i32> [ undef, %6 ], [ %35, %16 ]
  %42 = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %6 ], [ %36, %16 ]
  %43 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %6 ], [ %34, %16 ]
  %44 = phi <4 x i32> [ <i32 1, i32 1, i32 1, i32 1>, %6 ], [ %35, %16 ]
  %45 = icmp eq i32 %12, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %39, %46
  %47 = phi <4 x i32> [ %54, %46 ], [ %42, %39 ]
  %48 = phi <4 x i32> [ %52, %46 ], [ %43, %39 ]
  %49 = phi <4 x i32> [ %53, %46 ], [ %44, %39 ]
  %50 = phi i32 [ %55, %46 ], [ 0, %39 ]
  %51 = add <4 x i32> %47, <i32 4, i32 4, i32 4, i32 4>
  %52 = mul <4 x i32> %47, %48
  %53 = mul <4 x i32> %51, %49
  %54 = add <4 x i32> %47, <i32 8, i32 8, i32 8, i32 8>
  %55 = add i32 %50, 1
  %56 = icmp eq i32 %55, %12
  br i1 %56, label %57, label %46, !llvm.loop !8

57:                                               ; preds = %46, %39
  %58 = phi <4 x i32> [ %40, %39 ], [ %52, %46 ]
  %59 = phi <4 x i32> [ %41, %39 ], [ %53, %46 ]
  %60 = mul <4 x i32> %59, %58
  %61 = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %60)
  %62 = icmp eq i32 %4, %7
  br i1 %62, label %72, label %63

63:                                               ; preds = %3, %57
  %64 = phi i32 [ 2, %3 ], [ %8, %57 ]
  %65 = phi i32 [ 1, %3 ], [ %61, %57 ]
  br label %66

66:                                               ; preds = %63, %66
  %67 = phi i32 [ %70, %66 ], [ %64, %63 ]
  %68 = phi i32 [ %69, %66 ], [ %65, %63 ]
  %69 = mul nsw i32 %67, %68
  %70 = add nuw i32 %67, 1
  %71 = icmp eq i32 %67, %0
  br i1 %71, label %72, label %66, !llvm.loop !10

72:                                               ; preds = %66, %57, %1
  %73 = phi i32 [ 1, %1 ], [ %61, %57 ], [ %69, %66 ]
  ret i32 %73
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_PROGRAM_FOR_FACTORIAL_OF_A_NUMBER_1_processed.cpp() #4 section ".text.startup" {
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
