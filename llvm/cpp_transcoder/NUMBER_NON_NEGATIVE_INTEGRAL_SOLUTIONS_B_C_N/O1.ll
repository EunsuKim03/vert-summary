; ModuleID = 'benchmark/cpp_transcoder/NUMBER_NON_NEGATIVE_INTEGRAL_SOLUTIONS_B_C_N/NUMBER_NON_NEGATIVE_INTEGRAL_SOLUTIONS_B_C_N_processed.cpp'
source_filename = "benchmark/cpp_transcoder/NUMBER_NON_NEGATIVE_INTEGRAL_SOLUTIONS_B_C_N/NUMBER_NON_NEGATIVE_INTEGRAL_SOLUTIONS_B_C_N_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_NUMBER_NON_NEGATIVE_INTEGRAL_SOLUTIONS_B_C_N_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = add i32 %0, 1
  br label %5

5:                                                ; preds = %3, %20
  %6 = phi i32 [ %4, %3 ], [ %23, %20 ]
  %7 = phi i32 [ 0, %3 ], [ %22, %20 ]
  %8 = phi i32 [ 0, %3 ], [ %21, %20 ]
  %9 = sub nsw i32 %0, %7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %20, label %13

11:                                               ; preds = %20, %1
  %12 = phi i32 [ 0, %1 ], [ %21, %20 ]
  ret i32 %12

13:                                               ; preds = %5, %25
  %14 = phi i32 [ %28, %25 ], [ %6, %5 ]
  %15 = phi i32 [ %27, %25 ], [ 0, %5 ]
  %16 = phi i32 [ %26, %25 ], [ %8, %5 ]
  %17 = icmp slt i32 %9, %15
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = add nuw nsw i32 %15, %7
  br label %30

20:                                               ; preds = %25, %5
  %21 = phi i32 [ %8, %5 ], [ %26, %25 ]
  %22 = add nuw i32 %7, 1
  %23 = add i32 %6, -1
  %24 = icmp eq i32 %7, %0
  br i1 %24, label %11, label %5, !llvm.loop !5

25:                                               ; preds = %30, %13
  %26 = phi i32 [ %16, %13 ], [ %36, %30 ]
  %27 = add nuw i32 %15, 1
  %28 = add i32 %14, -1
  %29 = icmp eq i32 %27, %6
  br i1 %29, label %20, label %13, !llvm.loop !8

30:                                               ; preds = %18, %30
  %31 = phi i32 [ 0, %18 ], [ %37, %30 ]
  %32 = phi i32 [ %16, %18 ], [ %36, %30 ]
  %33 = add nuw nsw i32 %19, %31
  %34 = icmp eq i32 %33, %0
  %35 = zext i1 %34 to i32
  %36 = add nsw i32 %32, %35
  %37 = add nuw i32 %31, 1
  %38 = icmp eq i32 %37, %14
  br i1 %38, label %25, label %30, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_NUMBER_NON_NEGATIVE_INTEGRAL_SOLUTIONS_B_C_N_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
!9 = distinct !{!9, !6, !7}
