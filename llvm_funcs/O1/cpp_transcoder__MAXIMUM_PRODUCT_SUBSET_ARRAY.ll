; ModuleID = 'llvm/cpp_transcoder/MAXIMUM_PRODUCT_SUBSET_ARRAY/MAXIMUM_PRODUCT_SUBSET_ARRAY_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MAXIMUM_PRODUCT_SUBSET_ARRAY/MAXIMUM_PRODUCT_SUBSET_ARRAY_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_PRODUCT_SUBSET_ARRAY_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = zext i32 %1 to i64
  br label %16

8:                                                ; preds = %2
  %9 = load i32, i32* %0, align 4, !tbaa !5
  br label %54

10:                                               ; preds = %35, %4
  %11 = phi i32 [ -2147483648, %4 ], [ %36, %35 ]
  %12 = phi i32 [ 0, %4 ], [ %37, %35 ]
  %13 = phi i32 [ 0, %4 ], [ %38, %35 ]
  %14 = phi i32 [ 1, %4 ], [ %39, %35 ]
  %15 = icmp eq i32 %13, %1
  br i1 %15, label %54, label %42

16:                                               ; preds = %6, %35
  %17 = phi i64 [ 0, %6 ], [ %40, %35 ]
  %18 = phi i32 [ 1, %6 ], [ %39, %35 ]
  %19 = phi i32 [ 0, %6 ], [ %38, %35 ]
  %20 = phi i32 [ 0, %6 ], [ %37, %35 ]
  %21 = phi i32 [ -2147483648, %6 ], [ %36, %35 ]
  %22 = getelementptr inbounds i32, i32* %0, i64 %17
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = add nsw i32 %19, 1
  br label %35

27:                                               ; preds = %16
  %28 = icmp slt i32 %23, 0
  %29 = icmp slt i32 %21, %23
  %30 = select i1 %28, i1 %29, i1 false
  %31 = select i1 %30, i32 %23, i32 %21
  %32 = lshr i32 %23, 31
  %33 = add nsw i32 %32, %20
  %34 = mul nsw i32 %23, %18
  br label %35

35:                                               ; preds = %27, %25
  %36 = phi i32 [ %21, %25 ], [ %31, %27 ]
  %37 = phi i32 [ %20, %25 ], [ %33, %27 ]
  %38 = phi i32 [ %26, %25 ], [ %19, %27 ]
  %39 = phi i32 [ %18, %25 ], [ %34, %27 ]
  %40 = add nuw nsw i64 %17, 1
  %41 = icmp eq i64 %40, %7
  br i1 %41, label %10, label %16, !llvm.loop !9

42:                                               ; preds = %10
  %43 = and i32 %12, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = icmp eq i32 %12, 1
  %47 = icmp sgt i32 %13, 0
  %48 = select i1 %46, i1 %47, i1 false
  %49 = add nsw i32 %13, 1
  %50 = icmp eq i32 %49, %1
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = sdiv i32 %14, %11
  br label %54

54:                                               ; preds = %10, %45, %52, %42, %8
  %55 = phi i32 [ %9, %8 ], [ 0, %10 ], [ 0, %45 ], [ %53, %52 ], [ %14, %42 ]
  ret i32 %55
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_PRODUCT_SUBSET_ARRAY_reprocessed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
