; ModuleID = 'benchmark/cpp_transcoder/MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES/MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES/MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp slt i32 %0, 3
  br i1 %2, label %51, label %3

3:                                                ; preds = %1
  %4 = add i32 %0, -1
  %5 = icmp ult i32 %4, 8
  %6 = and i32 %4, -8
  %7 = or i32 %6, 1
  %8 = insertelement <4 x i32> poison, i32 %0, i64 0
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> zeroinitializer
  %10 = insertelement <4 x i32> poison, i32 %0, i64 0
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  %12 = icmp eq i32 %4, %6
  br label %13

13:                                               ; preds = %53, %3
  %14 = phi i32 [ 1, %3 ], [ %55, %53 ]
  %15 = phi i32 [ 0, %3 ], [ %54, %53 ]
  br i1 %5, label %48, label %16

16:                                               ; preds = %13
  %17 = insertelement <4 x i32> poison, i32 %15, i64 0
  %18 = shufflevector <4 x i32> %17, <4 x i32> poison, <4 x i32> zeroinitializer
  %19 = insertelement <4 x i32> poison, i32 %14, i64 0
  %20 = shufflevector <4 x i32> %19, <4 x i32> poison, <4 x i32> zeroinitializer
  %21 = insertelement <4 x i32> poison, i32 %14, i64 0
  %22 = shufflevector <4 x i32> %21, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %23

23:                                               ; preds = %23, %16
  %24 = phi i32 [ 0, %16 ], [ %41, %23 ]
  %25 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %16 ], [ %42, %23 ]
  %26 = phi <4 x i32> [ %18, %16 ], [ %39, %23 ]
  %27 = phi <4 x i32> [ %18, %16 ], [ %40, %23 ]
  %28 = add <4 x i32> %25, <i32 4, i32 4, i32 4, i32 4>
  %29 = add nuw <4 x i32> %20, %25
  %30 = add nuw <4 x i32> %22, %28
  %31 = sub <4 x i32> %9, %29
  %32 = sub <4 x i32> %11, %30
  %33 = mul nsw <4 x i32> %25, %20
  %34 = mul nsw <4 x i32> %28, %22
  %35 = mul nsw <4 x i32> %33, %31
  %36 = mul nsw <4 x i32> %34, %32
  %37 = icmp slt <4 x i32> %26, %35
  %38 = icmp slt <4 x i32> %27, %36
  %39 = select <4 x i1> %37, <4 x i32> %35, <4 x i32> %26
  %40 = select <4 x i1> %38, <4 x i32> %36, <4 x i32> %27
  %41 = add nuw i32 %24, 8
  %42 = add <4 x i32> %25, <i32 8, i32 8, i32 8, i32 8>
  %43 = icmp eq i32 %41, %6
  br i1 %43, label %44, label %23, !llvm.loop !5

44:                                               ; preds = %23
  %45 = icmp sgt <4 x i32> %39, %40
  %46 = select <4 x i1> %45, <4 x i32> %39, <4 x i32> %40
  %47 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %46)
  br i1 %12, label %53, label %48

48:                                               ; preds = %13, %44
  %49 = phi i32 [ 1, %13 ], [ %7, %44 ]
  %50 = phi i32 [ %15, %13 ], [ %47, %44 ]
  br label %57

51:                                               ; preds = %53, %1
  %52 = phi i32 [ 0, %1 ], [ %54, %53 ]
  ret i32 %52

53:                                               ; preds = %57, %44
  %54 = phi i32 [ %47, %44 ], [ %65, %57 ]
  %55 = add nuw i32 %14, 1
  %56 = icmp eq i32 %55, %4
  br i1 %56, label %51, label %13, !llvm.loop !8

57:                                               ; preds = %48, %57
  %58 = phi i32 [ %66, %57 ], [ %49, %48 ]
  %59 = phi i32 [ %65, %57 ], [ %50, %48 ]
  %60 = add nuw i32 %14, %58
  %61 = sub i32 %0, %60
  %62 = mul nsw i32 %58, %14
  %63 = mul nsw i32 %62, %61
  %64 = icmp slt i32 %59, %63
  %65 = select i1 %64, i32 %63, i32 %59
  %66 = add nuw nsw i32 %58, 1
  %67 = icmp eq i32 %66, %0
  br i1 %67, label %53, label %57, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMIZE_VOLUME_CUBOID_GIVEN_SUM_SIDES_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !6, !10, !7}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
