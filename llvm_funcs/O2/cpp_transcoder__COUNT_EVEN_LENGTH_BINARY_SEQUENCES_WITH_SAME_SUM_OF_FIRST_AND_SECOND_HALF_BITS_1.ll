; ModuleID = 'benchmark/cpp_transcoder/COUNT_EVEN_LENGTH_BINARY_SEQUENCES_WITH_SAME_SUM_OF_FIRST_AND_SECOND_HALF_BITS_1/COUNT_EVEN_LENGTH_BINARY_SEQUENCES_WITH_SAME_SUM_OF_FIRST_AND_SECOND_HALF_BITS_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_EVEN_LENGTH_BINARY_SEQUENCES_WITH_SAME_SUM_OF_FIRST_AND_SECOND_HALF_BITS_1/COUNT_EVEN_LENGTH_BINARY_SEQUENCES_WITH_SAME_SUM_OF_FIRST_AND_SECOND_HALF_BITS_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_EVEN_LENGTH_BINARY_SEQUENCES_WITH_SAME_SUM_OF_FIRST_AND_SECOND_HALF_BITS_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = add nuw i32 %0, 1
  %5 = and i32 %0, 1
  %6 = icmp eq i32 %0, 1
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = and i32 %0, -2
  br label %23

9:                                                ; preds = %23, %3
  %10 = phi i32 [ undef, %3 ], [ %38, %23 ]
  %11 = phi i32 [ 1, %3 ], [ %39, %23 ]
  %12 = phi i32 [ 1, %3 ], [ %38, %23 ]
  %13 = phi i32 [ 1, %3 ], [ %36, %23 ]
  %14 = icmp eq i32 %5, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = sub i32 %4, %11
  %17 = mul nsw i32 %16, %13
  %18 = sdiv i32 %17, %11
  %19 = mul nsw i32 %18, %18
  %20 = add nuw nsw i32 %19, %12
  br label %21

21:                                               ; preds = %15, %9, %1
  %22 = phi i32 [ 1, %1 ], [ %10, %9 ], [ %20, %15 ]
  ret i32 %22

23:                                               ; preds = %23, %7
  %24 = phi i32 [ 1, %7 ], [ %39, %23 ]
  %25 = phi i32 [ 1, %7 ], [ %38, %23 ]
  %26 = phi i32 [ 1, %7 ], [ %36, %23 ]
  %27 = phi i32 [ 0, %7 ], [ %40, %23 ]
  %28 = sub i32 %4, %24
  %29 = mul nsw i32 %28, %26
  %30 = sdiv i32 %29, %24
  %31 = mul nsw i32 %30, %30
  %32 = add nuw nsw i32 %31, %25
  %33 = add nuw i32 %24, 1
  %34 = sub i32 %4, %33
  %35 = mul nsw i32 %34, %30
  %36 = sdiv i32 %35, %33
  %37 = mul nsw i32 %36, %36
  %38 = add nuw nsw i32 %37, %32
  %39 = add nuw i32 %24, 2
  %40 = add i32 %27, 2
  %41 = icmp eq i32 %40, %8
  br i1 %41, label %9, label %23, !llvm.loop !5
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_EVEN_LENGTH_BINARY_SEQUENCES_WITH_SAME_SUM_OF_FIRST_AND_SECOND_HALF_BITS_1_processed.cpp() #4 section ".text.startup" {
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
