; ModuleID = 'benchmark/cpp_transcoder/FIND_UNIT_DIGIT_X_RAISED_POWER_Y/FIND_UNIT_DIGIT_X_RAISED_POWER_Y_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FIND_UNIT_DIGIT_X_RAISED_POWER_Y/FIND_UNIT_DIGIT_X_RAISED_POWER_Y_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_UNIT_DIGIT_X_RAISED_POWER_Y_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %21

4:                                                ; preds = %2
  %5 = add i32 %1, -1
  %6 = and i32 %1, 3
  %7 = icmp ult i32 %5, 3
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = and i32 %1, -4
  br label %23

10:                                               ; preds = %23, %4
  %11 = phi i32 [ undef, %4 ], [ %33, %23 ]
  %12 = phi i32 [ 1, %4 ], [ %33, %23 ]
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10, %14
  %15 = phi i32 [ %18, %14 ], [ %12, %10 ]
  %16 = phi i32 [ %19, %14 ], [ 0, %10 ]
  %17 = mul nsw i32 %15, %0
  %18 = srem i32 %17, 10
  %19 = add i32 %16, 1
  %20 = icmp eq i32 %19, %6
  br i1 %20, label %21, label %14, !llvm.loop !5

21:                                               ; preds = %10, %14, %2
  %22 = phi i32 [ 1, %2 ], [ %11, %10 ], [ %18, %14 ]
  ret i32 %22

23:                                               ; preds = %23, %8
  %24 = phi i32 [ 1, %8 ], [ %33, %23 ]
  %25 = phi i32 [ 0, %8 ], [ %34, %23 ]
  %26 = mul nsw i32 %24, %0
  %27 = srem i32 %26, 10
  %28 = mul nsw i32 %27, %0
  %29 = srem i32 %28, 10
  %30 = mul nsw i32 %29, %0
  %31 = srem i32 %30, 10
  %32 = mul nsw i32 %31, %0
  %33 = srem i32 %32, 10
  %34 = add i32 %25, 4
  %35 = icmp eq i32 %34, %9
  br i1 %35, label %10, label %23, !llvm.loop !7
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_UNIT_DIGIT_X_RAISED_POWER_Y_processed.cpp() #4 section ".text.startup" {
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
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
