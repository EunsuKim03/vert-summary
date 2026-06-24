; ModuleID = 'benchmark/cpp_transcoder/SQUARE_ROOT_OF_AN_INTEGER_1/SQUARE_ROOT_OF_AN_INTEGER_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/SQUARE_ROOT_OF_AN_INTEGER_1/SQUARE_ROOT_OF_AN_INTEGER_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SQUARE_ROOT_OF_AN_INTEGER_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %26, label %3

3:                                                ; preds = %1, %21
  %4 = phi i32 [ %22, %21 ], [ 1, %1 ]
  %5 = phi i32 [ %23, %21 ], [ %0, %1 ]
  %6 = phi i32 [ %24, %21 ], [ undef, %1 ]
  %7 = phi i32 [ %25, %21 ], [ undef, %1 ]
  %8 = icmp sgt i32 %4, %5
  br i1 %8, label %26, label %9

9:                                                ; preds = %3
  %10 = add nsw i32 %5, %4
  %11 = sdiv i32 %10, 2
  %12 = mul nsw i32 %11, %11
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = icmp slt i32 %12, %0
  %16 = add nsw i32 %11, 1
  %17 = add nsw i32 %11, -1
  %18 = select i1 %15, i32 %16, i32 %4
  %19 = select i1 %15, i32 %5, i32 %17
  %20 = select i1 %15, i32 %11, i32 %6
  br label %21

21:                                               ; preds = %9, %14
  %22 = phi i32 [ %18, %14 ], [ %4, %9 ]
  %23 = phi i32 [ %19, %14 ], [ %5, %9 ]
  %24 = phi i32 [ %20, %14 ], [ %6, %9 ]
  %25 = phi i32 [ %7, %14 ], [ %11, %9 ]
  br i1 %13, label %26, label %3, !llvm.loop !5

26:                                               ; preds = %21, %3, %1
  %27 = phi i32 [ %0, %1 ], [ %25, %21 ], [ %6, %3 ]
  ret i32 %27
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SQUARE_ROOT_OF_AN_INTEGER_1_processed.cpp() #4 section ".text.startup" {
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
