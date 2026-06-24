; ModuleID = 'benchmark/cpp_transcoder/MINIMUM_SUM_PRODUCT_TWO_ARRAYS/MINIMUM_SUM_PRODUCT_TWO_ARRAYS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MINIMUM_SUM_PRODUCT_TWO_ARRAYS/MINIMUM_SUM_PRODUCT_TWO_ARRAYS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_SUM_PRODUCT_TWO_ARRAYS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiS_ii(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = mul i32 %3, -2
  %8 = shl nsw i32 %3, 1
  %9 = mul i32 %3, -2
  %10 = shl nsw i32 %3, 1
  %11 = zext i32 %2 to i64
  br label %16

12:                                               ; preds = %50
  %13 = sub nsw i32 %26, %55
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi i32 [ %13, %12 ], [ 0, %4 ]
  ret i32 %15

16:                                               ; preds = %6, %50
  %17 = phi i64 [ 0, %6 ], [ %56, %50 ]
  %18 = phi i32 [ 0, %6 ], [ %55, %50 ]
  %19 = phi i32 [ 0, %6 ], [ %26, %50 ]
  %20 = phi i32 [ undef, %6 ], [ %51, %50 ]
  %21 = getelementptr inbounds i32, i32* %0, i64 %17
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = getelementptr inbounds i32, i32* %1, i64 %17
  %24 = load i32, i32* %23, align 4, !tbaa !5
  %25 = mul nsw i32 %24, %22
  %26 = add nsw i32 %25, %19
  %27 = and i32 %25, %24
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = add nsw i32 %22, %10
  %31 = mul nsw i32 %30, %24
  br label %50

32:                                               ; preds = %16
  %33 = and i32 %25, %22
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = add i32 %22, %9
  %37 = mul nsw i32 %36, %24
  br label %50

38:                                               ; preds = %32
  %39 = icmp sgt i32 %25, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %38
  %41 = icmp slt i32 %22, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = add nsw i32 %22, %8
  %44 = mul nsw i32 %43, %24
  br label %50

45:                                               ; preds = %40
  %46 = icmp eq i32 %22, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %45
  %48 = add i32 %22, %7
  %49 = mul nsw i32 %48, %24
  br label %50

50:                                               ; preds = %38, %35, %45, %47, %42, %29
  %51 = phi i32 [ %31, %29 ], [ %37, %35 ], [ %44, %42 ], [ %49, %47 ], [ %20, %45 ], [ %20, %38 ]
  %52 = sub nsw i32 %25, %51
  %53 = call i32 @llvm.abs.i32(i32 %52, i1 true)
  %54 = icmp sgt i32 %53, %18
  %55 = select i1 %54, i32 %53, i32 %18
  %56 = add nuw nsw i64 %17, 1
  %57 = icmp eq i64 %56, %11
  br i1 %57, label %12, label %16, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_SUM_PRODUCT_TWO_ARRAYS_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
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
!11 = !{!"llvm.loop.unroll.disable"}
