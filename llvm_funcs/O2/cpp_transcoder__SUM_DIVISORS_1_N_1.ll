; ModuleID = 'benchmark/cpp_transcoder/SUM_DIVISORS_1_N_1/SUM_DIVISORS_1_N_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/SUM_DIVISORS_1_N_1/SUM_DIVISORS_1_N_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SUM_DIVISORS_1_N_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = and i32 %0, 1
  %5 = icmp eq i32 %0, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = and i32 %0, -2
  %8 = shl i32 %0, 1
  br label %20

9:                                                ; preds = %20, %3
  %10 = phi i32 [ undef, %3 ], [ %29, %20 ]
  %11 = phi i32 [ 1, %3 ], [ %30, %20 ]
  %12 = phi i32 [ 0, %3 ], [ %29, %20 ]
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = srem i32 %0, %11
  %16 = add i32 %12, %0
  %17 = sub i32 %16, %15
  br label %18

18:                                               ; preds = %14, %9, %1
  %19 = phi i32 [ 0, %1 ], [ %10, %9 ], [ %17, %14 ]
  ret i32 %19

20:                                               ; preds = %20, %6
  %21 = phi i32 [ 1, %6 ], [ %30, %20 ]
  %22 = phi i32 [ 0, %6 ], [ %29, %20 ]
  %23 = phi i32 [ 0, %6 ], [ %31, %20 ]
  %24 = srem i32 %0, %21
  %25 = add nuw i32 %21, 1
  %26 = srem i32 %0, %25
  %27 = add i32 %22, %8
  %28 = add i32 %24, %26
  %29 = sub i32 %27, %28
  %30 = add nuw i32 %21, 2
  %31 = add i32 %23, 2
  %32 = icmp eq i32 %31, %7
  br i1 %32, label %9, label %20, !llvm.loop !5
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SUM_DIVISORS_1_N_1_processed.cpp() #4 section ".text.startup" {
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
