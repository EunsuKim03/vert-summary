; ModuleID = 'benchmark/cpp_transcoder/REARRANGE_ARRAY_MAXIMUM_MINIMUM_FORM_SET_2_O1_EXTRA_SPACE/REARRANGE_ARRAY_MAXIMUM_MINIMUM_FORM_SET_2_O1_EXTRA_SPACE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/REARRANGE_ARRAY_MAXIMUM_MINIMUM_FORM_SET_2_O1_EXTRA_SPACE/REARRANGE_ARRAY_MAXIMUM_MINIMUM_FORM_SET_2_O1_EXTRA_SPACE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_REARRANGE_ARRAY_MAXIMUM_MINIMUM_FORM_SET_2_O1_EXTRA_SPACE_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z6f_goldPii(i32* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = add nsw i32 %1, -1
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, i32* %0, i64 %4
  %6 = load i32, i32* %5, align 4, !tbaa !5
  %7 = add nsw i32 %6, 1
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = zext i32 %1 to i64
  br label %17

11:                                               ; preds = %43
  br i1 %8, label %12, label %55

12:                                               ; preds = %11
  %13 = and i64 %10, 1
  %14 = icmp eq i32 %1, 1
  br i1 %14, label %48, label %15

15:                                               ; preds = %12
  %16 = and i64 %10, 4294967294
  br label %56

17:                                               ; preds = %9, %43
  %18 = phi i64 [ 0, %9 ], [ %46, %43 ]
  %19 = phi i32 [ %3, %9 ], [ %45, %43 ]
  %20 = phi i32 [ 0, %9 ], [ %44, %43 ]
  %21 = and i64 %18, 1
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = sext i32 %19 to i64
  %25 = getelementptr inbounds i32, i32* %0, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = srem i32 %26, %7
  %28 = mul nsw i32 %27, %7
  %29 = getelementptr inbounds i32, i32* %0, i64 %18
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = add nsw i32 %30, %28
  store i32 %31, i32* %29, align 4, !tbaa !5
  %32 = add nsw i32 %19, -1
  br label %43

33:                                               ; preds = %17
  %34 = sext i32 %20 to i64
  %35 = getelementptr inbounds i32, i32* %0, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %37 = srem i32 %36, %7
  %38 = mul nsw i32 %37, %7
  %39 = getelementptr inbounds i32, i32* %0, i64 %18
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = add nsw i32 %40, %38
  store i32 %41, i32* %39, align 4, !tbaa !5
  %42 = add nsw i32 %20, 1
  br label %43

43:                                               ; preds = %23, %33
  %44 = phi i32 [ %20, %23 ], [ %42, %33 ]
  %45 = phi i32 [ %32, %23 ], [ %19, %33 ]
  %46 = add nuw nsw i64 %18, 1
  %47 = icmp eq i64 %46, %10
  br i1 %47, label %11, label %17, !llvm.loop !9

48:                                               ; preds = %56, %12
  %49 = phi i64 [ 0, %12 ], [ %66, %56 ]
  %50 = icmp eq i64 %13, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds i32, i32* %0, i64 %49
  %53 = load i32, i32* %52, align 4, !tbaa !5
  %54 = sdiv i32 %53, %7
  store i32 %54, i32* %52, align 4, !tbaa !5
  br label %55

55:                                               ; preds = %51, %48, %2, %11
  ret void

56:                                               ; preds = %56, %15
  %57 = phi i64 [ 0, %15 ], [ %66, %56 ]
  %58 = phi i64 [ 0, %15 ], [ %67, %56 ]
  %59 = getelementptr inbounds i32, i32* %0, i64 %57
  %60 = load i32, i32* %59, align 4, !tbaa !5
  %61 = sdiv i32 %60, %7
  store i32 %61, i32* %59, align 4, !tbaa !5
  %62 = or i64 %57, 1
  %63 = getelementptr inbounds i32, i32* %0, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !5
  %65 = sdiv i32 %64, %7
  store i32 %65, i32* %63, align 4, !tbaa !5
  %66 = add nuw nsw i64 %57, 2
  %67 = add i64 %58, 2
  %68 = icmp eq i64 %67, %16
  br i1 %68, label %48, label %56, !llvm.loop !11
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_REARRANGE_ARRAY_MAXIMUM_MINIMUM_FORM_SET_2_O1_EXTRA_SPACE_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
