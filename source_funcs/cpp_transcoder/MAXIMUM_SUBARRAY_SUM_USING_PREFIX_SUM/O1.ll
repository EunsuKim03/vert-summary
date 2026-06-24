; ModuleID = 'llvm/cpp_transcoder/MAXIMUM_SUBARRAY_SUM_USING_PREFIX_SUM/MAXIMUM_SUBARRAY_SUM_USING_PREFIX_SUM_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MAXIMUM_SUBARRAY_SUM_USING_PREFIX_SUM/MAXIMUM_SUBARRAY_SUM_USING_PREFIX_SUM_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_SUBARRAY_SUM_USING_PREFIX_SUM_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = alloca i32, i64 %3, align 16
  %5 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %5, i32* %4, align 16, !tbaa !5
  %6 = icmp sgt i32 %1, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = zext i32 %1 to i64
  %9 = load i32, i32* %4, align 16
  br label %14

10:                                               ; preds = %14, %2
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %10
  %13 = zext i32 %1 to i64
  br label %25

14:                                               ; preds = %7, %14
  %15 = phi i32 [ %9, %7 ], [ %19, %14 ]
  %16 = phi i64 [ 1, %7 ], [ %21, %14 ]
  %17 = getelementptr inbounds i32, i32* %0, i64 %16
  %18 = load i32, i32* %17, align 4, !tbaa !5
  %19 = add nsw i32 %18, %15
  %20 = getelementptr inbounds i32, i32* %4, i64 %16
  store i32 %19, i32* %20, align 4, !tbaa !5
  %21 = add nuw nsw i64 %16, 1
  %22 = icmp eq i64 %21, %8
  br i1 %22, label %10, label %14, !llvm.loop !9

23:                                               ; preds = %25, %10
  %24 = phi i32 [ -2147483648, %10 ], [ %33, %25 ]
  ret i32 %24

25:                                               ; preds = %12, %25
  %26 = phi i64 [ 0, %12 ], [ %36, %25 ]
  %27 = phi i32 [ 0, %12 ], [ %35, %25 ]
  %28 = phi i32 [ -2147483648, %12 ], [ %33, %25 ]
  %29 = getelementptr inbounds i32, i32* %4, i64 %26
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = sub nsw i32 %30, %27
  %32 = icmp slt i32 %28, %31
  %33 = select i1 %32, i32 %31, i32 %28
  %34 = icmp slt i32 %30, %27
  %35 = select i1 %34, i32 %30, i32 %27
  %36 = add nuw nsw i64 %26, 1
  %37 = icmp eq i64 %36, %13
  br i1 %37, label %23, label %25, !llvm.loop !12
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_SUBARRAY_SUM_USING_PREFIX_SUM_reprocessed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!12 = distinct !{!12, !10, !11}
