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
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  %6 = icmp eq i32 %1, 1
  %7 = sext i32 %1 to i64
  %8 = zext i32 %1 to i64
  %9 = zext i32 %5 to i64
  %10 = zext i32 %1 to i64
  br label %11

11:                                               ; preds = %4, %22
  %12 = phi i64 [ 0, %4 ], [ %24, %22 ]
  %13 = phi i32 [ -1, %4 ], [ %23, %22 ]
  br i1 %6, label %22, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds i32, i32* %0, i64 %12
  br label %26

16:                                               ; preds = %22, %2
  %17 = phi i32 [ -1, %2 ], [ %23, %22 ]
  ret i32 %17

18:                                               ; preds = %36, %26
  %19 = phi i32 [ %29, %26 ], [ %45, %36 ]
  %20 = add nuw nsw i64 %28, 1
  %21 = icmp eq i64 %30, %9
  br i1 %21, label %22, label %26, !llvm.loop !5

22:                                               ; preds = %18, %11
  %23 = phi i32 [ %13, %11 ], [ %19, %18 ]
  %24 = add nuw nsw i64 %12, 1
  %25 = icmp eq i64 %24, %8
  br i1 %25, label %16, label %11, !llvm.loop !8

26:                                               ; preds = %14, %18
  %27 = phi i64 [ 0, %14 ], [ %30, %18 ]
  %28 = phi i64 [ 1, %14 ], [ %20, %18 ]
  %29 = phi i32 [ %13, %14 ], [ %19, %18 ]
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp slt i64 %30, %7
  br i1 %31, label %32, label %18

32:                                               ; preds = %26
  %33 = getelementptr inbounds i32, i32* %0, i64 %27
  %34 = load i32, i32* %33, align 4, !tbaa !9
  %35 = load i32, i32* %15, align 4, !tbaa !9
  br label %36

36:                                               ; preds = %32, %36
  %37 = phi i64 [ %28, %32 ], [ %46, %36 ]
  %38 = phi i32 [ %29, %32 ], [ %45, %36 ]
  %39 = getelementptr inbounds i32, i32* %0, i64 %37
  %40 = load i32, i32* %39, align 4, !tbaa !9
  %41 = mul nsw i32 %40, %34
  %42 = icmp eq i32 %41, %35
  %43 = icmp slt i32 %38, %35
  %44 = select i1 %42, i1 %43, i1 false
  %45 = select i1 %44, i32 %35, i32 %38
  %46 = add nuw nsw i64 %37, 1
  %47 = icmp eq i64 %46, %10
  br i1 %47, label %18, label %36, !llvm.loop !13
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_PAIR_WITH_GREATEST_PRODUCT_IN_ARRAY_processed.cpp() #4 section ".text.startup" {
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C++ TBAA"}
!13 = distinct !{!13, !6, !7}
