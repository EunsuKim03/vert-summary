; ModuleID = 'benchmark/cpp_transcoder/COUNT_TOTAL_SET_BITS_IN_ALL_NUMBERS_FROM_1_TO_N/COUNT_TOTAL_SET_BITS_IN_ALL_NUMBERS_FROM_1_TO_N_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_TOTAL_SET_BITS_IN_ALL_NUMBERS_FROM_1_TO_N/COUNT_TOTAL_SET_BITS_IN_ALL_NUMBERS_FROM_1_TO_N_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_TOTAL_SET_BITS_IN_ALL_NUMBERS_FROM_1_TO_N_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = add i32 %0, 1
  %5 = and i32 %4, 1
  %6 = and i32 %4, -2
  %7 = icmp eq i32 %5, 0
  br label %8

8:                                                ; preds = %3, %12
  %9 = phi i32 [ %18, %12 ], [ 1, %3 ]
  %10 = phi i32 [ %16, %12 ], [ 0, %3 ]
  %11 = phi i32 [ %17, %12 ], [ 0, %3 ]
  br label %20

12:                                               ; preds = %20
  %13 = and i8 %39, 1
  %14 = zext i8 %13 to i32
  %15 = add nsw i32 %35, %14
  %16 = select i1 %7, i32 %35, i32 %15
  %17 = add nuw nsw i32 %11, 1
  %18 = shl i32 2, %11
  %19 = icmp sgt i32 %18, %0
  br i1 %19, label %43, label %8, !llvm.loop !5

20:                                               ; preds = %20, %8
  %21 = phi i32 [ %9, %8 ], [ %40, %20 ]
  %22 = phi i8 [ 0, %8 ], [ %39, %20 ]
  %23 = phi i32 [ %10, %8 ], [ %35, %20 ]
  %24 = phi i32 [ 0, %8 ], [ %41, %20 ]
  %25 = and i8 %22, 1
  %26 = zext i8 %25 to i32
  %27 = add nsw i32 %23, %26
  %28 = icmp eq i32 %21, 1
  %29 = xor i8 %25, 1
  %30 = add nsw i32 %21, -1
  %31 = select i1 %28, i8 %29, i8 %22
  %32 = select i1 %28, i32 %9, i32 %30
  %33 = and i8 %31, 1
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %27, %34
  %36 = icmp eq i32 %32, 1
  %37 = xor i8 %33, 1
  %38 = add nsw i32 %32, -1
  %39 = select i1 %36, i8 %37, i8 %31
  %40 = select i1 %36, i32 %9, i32 %38
  %41 = add i32 %24, 2
  %42 = icmp eq i32 %41, %6
  br i1 %42, label %12, label %20, !llvm.loop !7

43:                                               ; preds = %12, %1
  %44 = phi i32 [ 0, %1 ], [ %16, %12 ]
  ret i32 %44
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_TOTAL_SET_BITS_IN_ALL_NUMBERS_FROM_1_TO_N_processed.cpp() #4 section ".text.startup" {
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
