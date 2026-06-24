; ModuleID = 'benchmark/cpp_transcoder/COMPUTE_N_UNDER_MODULO_P/COMPUTE_N_UNDER_MODULO_P_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COMPUTE_N_UNDER_MODULO_P/COMPUTE_N_UNDER_MODULO_P_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COMPUTE_N_UNDER_MODULO_P_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp slt i32 %0, %1
  br i1 %3, label %4, label %44

4:                                                ; preds = %2
  %5 = icmp slt i32 %0, 1
  br i1 %5, label %44, label %6

6:                                                ; preds = %4
  %7 = add i32 %0, -1
  %8 = and i32 %0, 3
  %9 = icmp ult i32 %7, 3
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = and i32 %0, -4
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ 1, %10 ], [ %27, %12 ]
  %14 = phi i32 [ 1, %10 ], [ %26, %12 ]
  %15 = phi i32 [ 0, %10 ], [ %28, %12 ]
  %16 = mul nsw i32 %13, %14
  %17 = srem i32 %16, %1
  %18 = add nuw nsw i32 %13, 1
  %19 = mul nsw i32 %18, %17
  %20 = srem i32 %19, %1
  %21 = add nuw nsw i32 %13, 2
  %22 = mul nsw i32 %21, %20
  %23 = srem i32 %22, %1
  %24 = add nuw i32 %13, 3
  %25 = mul nsw i32 %24, %23
  %26 = srem i32 %25, %1
  %27 = add nuw i32 %13, 4
  %28 = add i32 %15, 4
  %29 = icmp eq i32 %28, %11
  br i1 %29, label %30, label %12, !llvm.loop !5

30:                                               ; preds = %12, %6
  %31 = phi i32 [ undef, %6 ], [ %26, %12 ]
  %32 = phi i32 [ 1, %6 ], [ %27, %12 ]
  %33 = phi i32 [ 1, %6 ], [ %26, %12 ]
  %34 = icmp eq i32 %8, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %30, %35
  %36 = phi i32 [ %41, %35 ], [ %32, %30 ]
  %37 = phi i32 [ %40, %35 ], [ %33, %30 ]
  %38 = phi i32 [ %42, %35 ], [ 0, %30 ]
  %39 = mul nsw i32 %36, %37
  %40 = srem i32 %39, %1
  %41 = add nuw i32 %36, 1
  %42 = add i32 %38, 1
  %43 = icmp eq i32 %42, %8
  br i1 %43, label %44, label %35, !llvm.loop !7

44:                                               ; preds = %30, %35, %4, %2
  %45 = phi i32 [ 0, %2 ], [ 1, %4 ], [ %31, %30 ], [ %40, %35 ]
  ret i32 %45
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COMPUTE_N_UNDER_MODULO_P_processed.cpp() #4 section ".text.startup" {
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
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.unroll.disable"}
