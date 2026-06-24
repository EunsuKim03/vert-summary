; ModuleID = 'benchmark/cpp_transcoder/SUM_PAIRWISE_PRODUCTS/SUM_PAIRWISE_PRODUCTS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/SUM_PAIRWISE_PRODUCTS/SUM_PAIRWISE_PRODUCTS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SUM_PAIRWISE_PRODUCTS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = add nuw i32 %0, 1
  %5 = zext i32 %4 to i64
  %6 = add nsw i64 %5, -1
  %7 = and i64 %6, 1
  %8 = icmp eq i32 %4, 2
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = and i64 %6, -2
  br label %11

11:                                               ; preds = %43, %9
  %12 = phi i64 [ 1, %9 ], [ %44, %43 ]
  %13 = phi i64 [ 0, %9 ], [ %40, %43 ]
  %14 = phi i64 [ 0, %9 ], [ %45, %43 ]
  br label %47

15:                                               ; preds = %43, %3
  %16 = phi i64 [ undef, %3 ], [ %40, %43 ]
  %17 = phi i64 [ 1, %3 ], [ %44, %43 ]
  %18 = phi i64 [ 0, %3 ], [ %40, %43 ]
  %19 = icmp eq i64 %7, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15, %20
  %21 = phi i64 [ %26, %20 ], [ %17, %15 ]
  %22 = phi i64 [ %25, %20 ], [ %18, %15 ]
  %23 = mul i64 %21, %17
  %24 = and i64 %23, 4294967295
  %25 = add nsw i64 %22, %24
  %26 = add nuw nsw i64 %21, 1
  %27 = icmp eq i64 %26, %5
  br i1 %27, label %28, label %20, !llvm.loop !5

28:                                               ; preds = %20, %15
  %29 = phi i64 [ %16, %15 ], [ %25, %20 ]
  %30 = trunc i64 %29 to i32
  br label %31

31:                                               ; preds = %28, %1
  %32 = phi i32 [ 0, %1 ], [ %30, %28 ]
  ret i32 %32

33:                                               ; preds = %47
  %34 = add nuw nsw i64 %12, 1
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i64 [ %34, %33 ], [ %41, %35 ]
  %37 = phi i64 [ %52, %33 ], [ %40, %35 ]
  %38 = mul i64 %36, %34
  %39 = and i64 %38, 4294967295
  %40 = add nsw i64 %37, %39
  %41 = add nuw nsw i64 %36, 1
  %42 = icmp eq i64 %41, %5
  br i1 %42, label %43, label %35, !llvm.loop !5

43:                                               ; preds = %35
  %44 = add nuw nsw i64 %12, 2
  %45 = add i64 %14, 2
  %46 = icmp eq i64 %45, %10
  br i1 %46, label %15, label %11, !llvm.loop !7

47:                                               ; preds = %11, %47
  %48 = phi i64 [ %12, %11 ], [ %53, %47 ]
  %49 = phi i64 [ %13, %11 ], [ %52, %47 ]
  %50 = mul i64 %48, %12
  %51 = and i64 %50, 4294967295
  %52 = add nsw i64 %49, %51
  %53 = add nuw nsw i64 %48, 1
  %54 = icmp eq i64 %53, %5
  br i1 %54, label %33, label %47, !llvm.loop !5
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SUM_PAIRWISE_PRODUCTS_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
