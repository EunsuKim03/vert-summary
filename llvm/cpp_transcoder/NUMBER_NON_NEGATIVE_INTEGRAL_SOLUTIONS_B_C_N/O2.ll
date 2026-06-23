; ModuleID = 'benchmark/cpp_transcoder/NUMBER_NON_NEGATIVE_INTEGRAL_SOLUTIONS_B_C_N/NUMBER_NON_NEGATIVE_INTEGRAL_SOLUTIONS_B_C_N_processed.cpp'
source_filename = "benchmark/cpp_transcoder/NUMBER_NON_NEGATIVE_INTEGRAL_SOLUTIONS_B_C_N/NUMBER_NON_NEGATIVE_INTEGRAL_SOLUTIONS_B_C_N_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_NUMBER_NON_NEGATIVE_INTEGRAL_SOLUTIONS_B_C_N_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = add i32 %0, 1
  %5 = insertelement <4 x i32> poison, i32 %0, i64 0
  %6 = shufflevector <4 x i32> %5, <4 x i32> poison, <4 x i32> zeroinitializer
  %7 = insertelement <4 x i32> poison, i32 %0, i64 0
  %8 = shufflevector <4 x i32> %7, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %9

9:                                                ; preds = %3, %58
  %10 = phi i32 [ %4, %3 ], [ %61, %58 ]
  %11 = phi i32 [ 0, %3 ], [ %60, %58 ]
  %12 = phi i32 [ 0, %3 ], [ %59, %58 ]
  %13 = sub nsw i32 %0, %11
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %58, label %17

15:                                               ; preds = %58, %1
  %16 = phi i32 [ 0, %1 ], [ %59, %58 ]
  ret i32 %16

17:                                               ; preds = %9, %63
  %18 = phi i32 [ %66, %63 ], [ %10, %9 ]
  %19 = phi i32 [ %65, %63 ], [ 0, %9 ]
  %20 = phi i32 [ %64, %63 ], [ %12, %9 ]
  %21 = add i32 %11, %19
  %22 = sub i32 %4, %21
  %23 = icmp slt i32 %13, %19
  br i1 %23, label %63, label %24

24:                                               ; preds = %17
  %25 = add nuw nsw i32 %19, %11
  %26 = icmp ult i32 %22, 8
  br i1 %26, label %55, label %27

27:                                               ; preds = %24
  %28 = and i32 %22, -8
  %29 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %20, i64 0
  %30 = insertelement <4 x i32> poison, i32 %25, i64 0
  %31 = shufflevector <4 x i32> %30, <4 x i32> poison, <4 x i32> zeroinitializer
  %32 = add i32 %25, 4
  %33 = insertelement <4 x i32> poison, i32 %32, i64 0
  %34 = shufflevector <4 x i32> %33, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %35

35:                                               ; preds = %35, %27
  %36 = phi i32 [ 0, %27 ], [ %48, %35 ]
  %37 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %27 ], [ %49, %35 ]
  %38 = phi <4 x i32> [ %29, %27 ], [ %46, %35 ]
  %39 = phi <4 x i32> [ zeroinitializer, %27 ], [ %47, %35 ]
  %40 = add nuw nsw <4 x i32> %31, %37
  %41 = add <4 x i32> %34, %37
  %42 = icmp eq <4 x i32> %40, %6
  %43 = icmp eq <4 x i32> %41, %8
  %44 = zext <4 x i1> %42 to <4 x i32>
  %45 = zext <4 x i1> %43 to <4 x i32>
  %46 = add <4 x i32> %38, %44
  %47 = add <4 x i32> %39, %45
  %48 = add nuw i32 %36, 8
  %49 = add <4 x i32> %37, <i32 8, i32 8, i32 8, i32 8>
  %50 = icmp eq i32 %48, %28
  br i1 %50, label %51, label %35, !llvm.loop !5

51:                                               ; preds = %35
  %52 = add <4 x i32> %47, %46
  %53 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %52)
  %54 = icmp eq i32 %22, %28
  br i1 %54, label %63, label %55

55:                                               ; preds = %24, %51
  %56 = phi i32 [ 0, %24 ], [ %28, %51 ]
  %57 = phi i32 [ %20, %24 ], [ %53, %51 ]
  br label %68

58:                                               ; preds = %63, %9
  %59 = phi i32 [ %12, %9 ], [ %64, %63 ]
  %60 = add nuw i32 %11, 1
  %61 = add i32 %10, -1
  %62 = icmp eq i32 %11, %0
  br i1 %62, label %15, label %9, !llvm.loop !8

63:                                               ; preds = %68, %51, %17
  %64 = phi i32 [ %20, %17 ], [ %53, %51 ], [ %74, %68 ]
  %65 = add nuw i32 %19, 1
  %66 = add i32 %18, -1
  %67 = icmp eq i32 %65, %10
  br i1 %67, label %58, label %17, !llvm.loop !9

68:                                               ; preds = %55, %68
  %69 = phi i32 [ %75, %68 ], [ %56, %55 ]
  %70 = phi i32 [ %74, %68 ], [ %57, %55 ]
  %71 = add nuw nsw i32 %25, %69
  %72 = icmp eq i32 %71, %0
  %73 = zext i1 %72 to i32
  %74 = add nsw i32 %70, %73
  %75 = add nuw i32 %69, 1
  %76 = icmp eq i32 %75, %18
  br i1 %76, label %63, label %68, !llvm.loop !10
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_NUMBER_NON_NEGATIVE_INTEGRAL_SOLUTIONS_B_C_N_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6, !11, !7}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
