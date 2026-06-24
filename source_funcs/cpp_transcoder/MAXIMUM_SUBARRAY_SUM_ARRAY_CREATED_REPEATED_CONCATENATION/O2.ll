; ModuleID = 'llvm/cpp_transcoder/MAXIMUM_SUBARRAY_SUM_ARRAY_CREATED_REPEATED_CONCATENATION/MAXIMUM_SUBARRAY_SUM_ARRAY_CREATED_REPEATED_CONCATENATION_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MAXIMUM_SUBARRAY_SUM_ARRAY_CREATED_REPEATED_CONCATENATION/MAXIMUM_SUBARRAY_SUM_ARRAY_CREATED_REPEATED_CONCATENATION_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_SUBARRAY_SUM_ARRAY_CREATED_REPEATED_CONCATENATION_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = mul i32 %2, %1
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = and i32 %4, 1
  %8 = icmp eq i32 %4, 1
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = and i32 %4, -2
  br label %27

11:                                               ; preds = %27, %6
  %12 = phi i32 [ undef, %6 ], [ %48, %27 ]
  %13 = phi i32 [ 0, %6 ], [ %51, %27 ]
  %14 = phi i32 [ 0, %6 ], [ %50, %27 ]
  %15 = phi i32 [ -2147483648, %6 ], [ %48, %27 ]
  %16 = icmp eq i32 %7, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = srem i32 %13, %1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %0, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !5
  %22 = add nsw i32 %21, %14
  %23 = icmp slt i32 %15, %22
  %24 = select i1 %23, i32 %22, i32 %15
  br label %25

25:                                               ; preds = %17, %11, %3
  %26 = phi i32 [ -2147483648, %3 ], [ %12, %11 ], [ %24, %17 ]
  ret i32 %26

27:                                               ; preds = %27, %9
  %28 = phi i32 [ 0, %9 ], [ %51, %27 ]
  %29 = phi i32 [ 0, %9 ], [ %50, %27 ]
  %30 = phi i32 [ -2147483648, %9 ], [ %48, %27 ]
  %31 = phi i32 [ 0, %9 ], [ %52, %27 ]
  %32 = srem i32 %28, %1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %0, i64 %33
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = add nsw i32 %35, %29
  %37 = icmp slt i32 %30, %36
  %38 = select i1 %37, i32 %36, i32 %30
  %39 = icmp sgt i32 %36, 0
  %40 = select i1 %39, i32 %36, i32 0
  %41 = or i32 %28, 1
  %42 = srem i32 %41, %1
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %0, i64 %43
  %45 = load i32, i32* %44, align 4, !tbaa !5
  %46 = add nsw i32 %45, %40
  %47 = icmp slt i32 %38, %46
  %48 = select i1 %47, i32 %46, i32 %38
  %49 = icmp sgt i32 %46, 0
  %50 = select i1 %49, i32 %46, i32 0
  %51 = add nuw nsw i32 %28, 2
  %52 = add i32 %31, 2
  %53 = icmp eq i32 %52, %10
  br i1 %53, label %11, label %27, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_SUBARRAY_SUM_ARRAY_CREATED_REPEATED_CONCATENATION_reprocessed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
