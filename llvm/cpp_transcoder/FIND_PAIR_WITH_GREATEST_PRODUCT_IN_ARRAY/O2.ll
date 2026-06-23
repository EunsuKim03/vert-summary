; ModuleID = 'benchmark/cpp_transcoder/FIND_PAIR_WITH_GREATEST_PRODUCT_IN_ARRAY/FIND_PAIR_WITH_GREATEST_PRODUCT_IN_ARRAY_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FIND_PAIR_WITH_GREATEST_PRODUCT_IN_ARRAY/FIND_PAIR_WITH_GREATEST_PRODUCT_IN_ARRAY_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_PAIR_WITH_GREATEST_PRODUCT_IN_ARRAY_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -1
  %6 = icmp eq i32 %1, 1
  %7 = zext i32 %1 to i64
  %8 = zext i32 %1 to i64
  %9 = zext i32 %5 to i64
  br label %10

10:                                               ; preds = %4, %21
  %11 = phi i64 [ 0, %4 ], [ %23, %21 ]
  %12 = phi i32 [ -1, %4 ], [ %22, %21 ]
  br i1 %6, label %21, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds i32, i32* %0, i64 %11
  br label %25

15:                                               ; preds = %21, %2
  %16 = phi i32 [ -1, %2 ], [ %22, %21 ]
  ret i32 %16

17:                                               ; preds = %35, %25
  %18 = phi i32 [ %28, %25 ], [ %44, %35 ]
  %19 = add nuw nsw i64 %27, 1
  %20 = icmp eq i64 %29, %9
  br i1 %20, label %21, label %25, !llvm.loop !5

21:                                               ; preds = %17, %10
  %22 = phi i32 [ %12, %10 ], [ %18, %17 ]
  %23 = add nuw nsw i64 %11, 1
  %24 = icmp eq i64 %23, %8
  br i1 %24, label %15, label %10, !llvm.loop !7

25:                                               ; preds = %13, %17
  %26 = phi i64 [ 0, %13 ], [ %29, %17 ]
  %27 = phi i64 [ 1, %13 ], [ %19, %17 ]
  %28 = phi i32 [ %12, %13 ], [ %18, %17 ]
  %29 = add nuw nsw i64 %26, 1
  %30 = icmp ult i64 %29, %7
  br i1 %30, label %31, label %17

31:                                               ; preds = %25
  %32 = getelementptr inbounds i32, i32* %0, i64 %26
  %33 = load i32, i32* %32, align 4, !tbaa !8
  %34 = load i32, i32* %14, align 4, !tbaa !8
  br label %35

35:                                               ; preds = %31, %35
  %36 = phi i64 [ %27, %31 ], [ %45, %35 ]
  %37 = phi i32 [ %28, %31 ], [ %44, %35 ]
  %38 = getelementptr inbounds i32, i32* %0, i64 %36
  %39 = load i32, i32* %38, align 4, !tbaa !8
  %40 = mul nsw i32 %39, %33
  %41 = icmp eq i32 %40, %34
  %42 = icmp slt i32 %37, %34
  %43 = select i1 %41, i1 %42, i1 false
  %44 = select i1 %43, i32 %34, i32 %37
  %45 = add nuw nsw i64 %36, 1
  %46 = icmp eq i64 %45, %8
  br i1 %46, label %17, label %35, !llvm.loop !12
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_PAIR_WITH_GREATEST_PRODUCT_IN_ARRAY_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !6}
