; ModuleID = 'benchmark/cpp_transcoder/STEINS_ALGORITHM_FOR_FINDING_GCD_1/STEINS_ALGORITHM_FOR_FINDING_GCD_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/STEINS_ALGORITHM_FOR_FINDING_GCD_1/STEINS_ALGORITHM_FOR_FINDING_GCD_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_STEINS_ALGORITHM_FOR_FINDING_GCD_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %6
  %9 = and i32 %0, 1
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %1, 1
  %12 = icmp eq i32 %11, 0
  br i1 %10, label %13, label %21

13:                                               ; preds = %8
  %14 = ashr i32 %0, 1
  br i1 %12, label %17, label %15

15:                                               ; preds = %13
  %16 = call noundef i32 @_Z6f_goldii(i32 noundef %14, i32 noundef %1)
  br label %35

17:                                               ; preds = %13
  %18 = ashr i32 %1, 1
  %19 = call noundef i32 @_Z6f_goldii(i32 noundef %14, i32 noundef %18)
  %20 = shl i32 %19, 1
  br label %35

21:                                               ; preds = %8
  br i1 %12, label %22, label %25

22:                                               ; preds = %21
  %23 = ashr i32 %1, 1
  %24 = call noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %23)
  br label %35

25:                                               ; preds = %21
  %26 = icmp sgt i32 %0, %1
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = sub nsw i32 %0, %1
  %29 = ashr i32 %28, 1
  %30 = call noundef i32 @_Z6f_goldii(i32 noundef %29, i32 noundef %1)
  br label %35

31:                                               ; preds = %25
  %32 = sub nsw i32 %1, %0
  %33 = ashr i32 %32, 1
  %34 = call noundef i32 @_Z6f_goldii(i32 noundef %33, i32 noundef %0)
  br label %35

35:                                               ; preds = %6, %4, %2, %31, %27, %22, %17, %15
  %36 = phi i32 [ %16, %15 ], [ %20, %17 ], [ %24, %22 ], [ %30, %27 ], [ %34, %31 ], [ %0, %2 ], [ %1, %4 ], [ %0, %6 ]
  ret i32 %36
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_STEINS_ALGORITHM_FOR_FINDING_GCD_1_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
