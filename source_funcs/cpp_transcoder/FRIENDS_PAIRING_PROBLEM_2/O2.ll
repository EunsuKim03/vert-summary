; ModuleID = 'benchmark/cpp_transcoder/FRIENDS_PAIRING_PROBLEM_2/FRIENDS_PAIRING_PROBLEM_2_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FRIENDS_PAIRING_PROBLEM_2/FRIENDS_PAIRING_PROBLEM_2_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FRIENDS_PAIRING_PROBLEM_2_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp slt i32 %0, 3
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = add i32 %0, -2
  %5 = add i32 %0, -3
  %6 = and i32 %4, 3
  %7 = icmp ult i32 %5, 3
  br i1 %7, label %29, label %8

8:                                                ; preds = %3
  %9 = and i32 %4, -4
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 3, %8 ], [ %26, %10 ]
  %12 = phi i32 [ 2, %8 ], [ %25, %10 ]
  %13 = phi i32 [ 1, %8 ], [ %23, %10 ]
  %14 = phi i32 [ 0, %8 ], [ %27, %10 ]
  %15 = add nsw i32 %11, -1
  %16 = mul nsw i32 %15, %13
  %17 = add nsw i32 %16, %12
  %18 = add nuw i32 %11, 1
  %19 = mul nsw i32 %11, %12
  %20 = add nsw i32 %19, %17
  %21 = add nuw i32 %11, 2
  %22 = mul nsw i32 %18, %17
  %23 = add nsw i32 %22, %20
  %24 = mul nsw i32 %21, %20
  %25 = add nsw i32 %24, %23
  %26 = add nuw i32 %11, 4
  %27 = add i32 %14, 4
  %28 = icmp eq i32 %27, %9
  br i1 %28, label %29, label %10, !llvm.loop !5

29:                                               ; preds = %10, %3
  %30 = phi i32 [ undef, %3 ], [ %25, %10 ]
  %31 = phi i32 [ 3, %3 ], [ %26, %10 ]
  %32 = phi i32 [ 2, %3 ], [ %25, %10 ]
  %33 = phi i32 [ 1, %3 ], [ %23, %10 ]
  %34 = icmp eq i32 %6, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %29, %35
  %36 = phi i32 [ %43, %35 ], [ %31, %29 ]
  %37 = phi i32 [ %42, %35 ], [ %32, %29 ]
  %38 = phi i32 [ %37, %35 ], [ %33, %29 ]
  %39 = phi i32 [ %44, %35 ], [ 0, %29 ]
  %40 = add nsw i32 %36, -1
  %41 = mul nsw i32 %40, %38
  %42 = add nsw i32 %41, %37
  %43 = add nuw i32 %36, 1
  %44 = add i32 %39, 1
  %45 = icmp eq i32 %44, %6
  br i1 %45, label %46, label %35, !llvm.loop !7

46:                                               ; preds = %29, %35, %1
  %47 = phi i32 [ %0, %1 ], [ %30, %29 ], [ %42, %35 ]
  ret i32 %47
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FRIENDS_PAIRING_PROBLEM_2_processed.cpp() #4 section ".text.startup" {
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
