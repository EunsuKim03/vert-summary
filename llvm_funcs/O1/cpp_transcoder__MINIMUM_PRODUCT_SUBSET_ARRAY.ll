; ModuleID = 'llvm/cpp_transcoder/MINIMUM_PRODUCT_SUBSET_ARRAY/MINIMUM_PRODUCT_SUBSET_ARRAY_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MINIMUM_PRODUCT_SUBSET_ARRAY/MINIMUM_PRODUCT_SUBSET_ARRAY_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MINIMUM_PRODUCT_SUBSET_ARRAY_reprocessed.cpp, i8* null }]

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
  br label %17

8:                                                ; preds = %2
  %9 = load i32, i32* %0, align 4, !tbaa !5
  br label %59

10:                                               ; preds = %41, %4
  %11 = phi i32 [ -2147483648, %4 ], [ %42, %41 ]
  %12 = phi i32 [ 2147483647, %4 ], [ %43, %41 ]
  %13 = phi i32 [ 0, %4 ], [ %44, %41 ]
  %14 = phi i32 [ 0, %4 ], [ %45, %41 ]
  %15 = phi i32 [ 1, %4 ], [ %46, %41 ]
  %16 = icmp eq i32 %14, %1
  br i1 %16, label %59, label %49

17:                                               ; preds = %6, %41
  %18 = phi i64 [ 0, %6 ], [ %47, %41 ]
  %19 = phi i32 [ 1, %6 ], [ %46, %41 ]
  %20 = phi i32 [ 0, %6 ], [ %45, %41 ]
  %21 = phi i32 [ 0, %6 ], [ %44, %41 ]
  %22 = phi i32 [ 2147483647, %6 ], [ %43, %41 ]
  %23 = phi i32 [ -2147483648, %6 ], [ %42, %41 ]
  %24 = getelementptr inbounds i32, i32* %0, i64 %18
  %25 = load i32, i32* %24, align 4, !tbaa !5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = add nsw i32 %20, 1
  br label %41

29:                                               ; preds = %17
  %30 = icmp slt i32 %25, 0
  %31 = icmp slt i32 %23, %25
  %32 = select i1 %30, i1 %31, i1 false
  %33 = select i1 %32, i32 %25, i32 %23
  %34 = lshr i32 %25, 31
  %35 = add nsw i32 %34, %21
  %36 = icmp sgt i32 %25, 0
  %37 = icmp slt i32 %25, %22
  %38 = select i1 %36, i1 %37, i1 false
  %39 = select i1 %38, i32 %25, i32 %22
  %40 = mul nsw i32 %25, %19
  br label %41

41:                                               ; preds = %29, %27
  %42 = phi i32 [ %23, %27 ], [ %33, %29 ]
  %43 = phi i32 [ %22, %27 ], [ %39, %29 ]
  %44 = phi i32 [ %21, %27 ], [ %35, %29 ]
  %45 = phi i32 [ %28, %27 ], [ %20, %29 ]
  %46 = phi i32 [ %19, %27 ], [ %40, %29 ]
  %47 = add nuw nsw i64 %18, 1
  %48 = icmp eq i64 %47, %7
  br i1 %48, label %10, label %17, !llvm.loop !9

49:                                               ; preds = %10
  %50 = icmp eq i32 %13, 0
  %51 = icmp sgt i32 %14, 0
  %52 = select i1 %50, i1 %51, i1 false
  %53 = select i1 %52, i32 0, i32 %12
  br i1 %50, label %59, label %54

54:                                               ; preds = %49
  %55 = and i32 %13, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = sdiv i32 %15, %11
  br label %59

59:                                               ; preds = %49, %10, %57, %54, %8
  %60 = phi i32 [ %9, %8 ], [ %53, %49 ], [ 0, %10 ], [ %58, %57 ], [ %15, %54 ]
  ret i32 %60
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MINIMUM_PRODUCT_SUBSET_ARRAY_reprocessed.cpp() #4 section ".text.startup" {
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
