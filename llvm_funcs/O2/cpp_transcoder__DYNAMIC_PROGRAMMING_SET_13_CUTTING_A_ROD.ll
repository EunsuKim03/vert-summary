; ModuleID = 'llvm/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_13_CUTTING_A_ROD/DYNAMIC_PROGRAMMING_SET_13_CUTTING_A_ROD_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_13_CUTTING_A_ROD/DYNAMIC_PROGRAMMING_SET_13_CUTTING_A_ROD_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_13_CUTTING_A_ROD_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = add i32 %1, 1
  %4 = zext i32 %3 to i64
  %5 = alloca i32, i64 %4, align 16
  store i32 0, i32* %5, align 16, !tbaa !5
  %6 = icmp slt i32 %1, 1
  br i1 %6, label %69, label %7

7:                                                ; preds = %2, %64
  %8 = phi i64 [ %67, %64 ], [ 1, %2 ]
  %9 = icmp ult i64 %8, 8
  br i1 %9, label %47, label %10

10:                                               ; preds = %7
  %11 = and i64 %8, 9223372036854775800
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 0, %10 ], [ %40, %12 ]
  %14 = phi <4 x i32> [ <i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648>, %10 ], [ %38, %12 ]
  %15 = phi <4 x i32> [ <i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648>, %10 ], [ %39, %12 ]
  %16 = getelementptr inbounds i32, i32* %0, i64 %13
  %17 = bitcast i32* %16 to <4 x i32>*
  %18 = load <4 x i32>, <4 x i32>* %17, align 4, !tbaa !5
  %19 = getelementptr inbounds i32, i32* %16, i64 4
  %20 = bitcast i32* %19 to <4 x i32>*
  %21 = load <4 x i32>, <4 x i32>* %20, align 4, !tbaa !5
  %22 = xor i64 %13, -1
  %23 = add nsw i64 %8, %22
  %24 = getelementptr inbounds i32, i32* %5, i64 %23
  %25 = getelementptr inbounds i32, i32* %24, i64 -3
  %26 = bitcast i32* %25 to <4 x i32>*
  %27 = load <4 x i32>, <4 x i32>* %26, align 4, !tbaa !5
  %28 = shufflevector <4 x i32> %27, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %29 = getelementptr inbounds i32, i32* %24, i64 -4
  %30 = getelementptr inbounds i32, i32* %29, i64 -3
  %31 = bitcast i32* %30 to <4 x i32>*
  %32 = load <4 x i32>, <4 x i32>* %31, align 4, !tbaa !5
  %33 = shufflevector <4 x i32> %32, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %34 = add nsw <4 x i32> %28, %18
  %35 = add nsw <4 x i32> %33, %21
  %36 = icmp slt <4 x i32> %14, %34
  %37 = icmp slt <4 x i32> %15, %35
  %38 = select <4 x i1> %36, <4 x i32> %34, <4 x i32> %14
  %39 = select <4 x i1> %37, <4 x i32> %35, <4 x i32> %15
  %40 = add nuw i64 %13, 8
  %41 = icmp eq i64 %40, %11
  br i1 %41, label %42, label %12, !llvm.loop !9

42:                                               ; preds = %12
  %43 = icmp sgt <4 x i32> %38, %39
  %44 = select <4 x i1> %43, <4 x i32> %38, <4 x i32> %39
  %45 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %44)
  %46 = icmp eq i64 %8, %11
  br i1 %46, label %64, label %47

47:                                               ; preds = %7, %42
  %48 = phi i64 [ 0, %7 ], [ %11, %42 ]
  %49 = phi i32 [ -2147483648, %7 ], [ %45, %42 ]
  br label %50

50:                                               ; preds = %47, %50
  %51 = phi i64 [ %62, %50 ], [ %48, %47 ]
  %52 = phi i32 [ %61, %50 ], [ %49, %47 ]
  %53 = getelementptr inbounds i32, i32* %0, i64 %51
  %54 = load i32, i32* %53, align 4, !tbaa !5
  %55 = xor i64 %51, -1
  %56 = add nsw i64 %8, %55
  %57 = getelementptr inbounds i32, i32* %5, i64 %56
  %58 = load i32, i32* %57, align 4, !tbaa !5
  %59 = add nsw i32 %58, %54
  %60 = icmp slt i32 %52, %59
  %61 = select i1 %60, i32 %59, i32 %52
  %62 = add nuw nsw i64 %51, 1
  %63 = icmp eq i64 %62, %8
  br i1 %63, label %64, label %50, !llvm.loop !12

64:                                               ; preds = %50, %42
  %65 = phi i32 [ %45, %42 ], [ %61, %50 ]
  %66 = getelementptr inbounds i32, i32* %5, i64 %8
  store i32 %65, i32* %66, align 4, !tbaa !5
  %67 = add nuw nsw i64 %8, 1
  %68 = icmp eq i64 %67, %4
  br i1 %68, label %69, label %7, !llvm.loop !14

69:                                               ; preds = %64, %2
  %70 = sext i32 %1 to i64
  %71 = getelementptr inbounds i32, i32* %5, i64 %70
  %72 = load i32, i32* %71, align 4, !tbaa !5
  ret i32 %72
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_13_CUTTING_A_ROD_reprocessed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10}
