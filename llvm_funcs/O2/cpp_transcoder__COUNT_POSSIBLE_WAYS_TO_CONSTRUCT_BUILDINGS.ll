; ModuleID = 'benchmark/cpp_transcoder/COUNT_POSSIBLE_WAYS_TO_CONSTRUCT_BUILDINGS/COUNT_POSSIBLE_WAYS_TO_CONSTRUCT_BUILDINGS_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_POSSIBLE_WAYS_TO_CONSTRUCT_BUILDINGS/COUNT_POSSIBLE_WAYS_TO_CONSTRUCT_BUILDINGS_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_POSSIBLE_WAYS_TO_CONSTRUCT_BUILDINGS_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, 2
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = add i32 %0, -1
  %7 = add i32 %0, -2
  %8 = and i32 %6, 7
  %9 = icmp ult i32 %7, 7
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = and i32 %6, -8
  br label %32

12:                                               ; preds = %32, %5
  %13 = phi i32 [ undef, %5 ], [ %42, %32 ]
  %14 = phi i32 [ undef, %5 ], [ %43, %32 ]
  %15 = phi i32 [ 1, %5 ], [ %42, %32 ]
  %16 = phi i32 [ 1, %5 ], [ %43, %32 ]
  %17 = icmp eq i32 %8, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12, %18
  %19 = phi i32 [ %20, %18 ], [ %15, %12 ]
  %20 = phi i32 [ %22, %18 ], [ %16, %12 ]
  %21 = phi i32 [ %23, %18 ], [ 0, %12 ]
  %22 = add nsw i32 %19, %20
  %23 = add i32 %21, 1
  %24 = icmp eq i32 %23, %8
  br i1 %24, label %25, label %18, !llvm.loop !5

25:                                               ; preds = %18, %12
  %26 = phi i32 [ %13, %12 ], [ %20, %18 ]
  %27 = phi i32 [ %14, %12 ], [ %22, %18 ]
  %28 = add nsw i32 %26, %27
  br label %29

29:                                               ; preds = %25, %3
  %30 = phi i32 [ %28, %25 ], [ 2, %3 ]
  %31 = mul nsw i32 %30, %30
  br label %46

32:                                               ; preds = %32, %10
  %33 = phi i32 [ 1, %10 ], [ %42, %32 ]
  %34 = phi i32 [ 1, %10 ], [ %43, %32 ]
  %35 = phi i32 [ 0, %10 ], [ %44, %32 ]
  %36 = add nsw i32 %33, %34
  %37 = add nsw i32 %34, %36
  %38 = add nsw i32 %36, %37
  %39 = add nsw i32 %37, %38
  %40 = add nsw i32 %38, %39
  %41 = add nsw i32 %39, %40
  %42 = add nsw i32 %40, %41
  %43 = add nsw i32 %41, %42
  %44 = add i32 %35, 8
  %45 = icmp eq i32 %44, %11
  br i1 %45, label %12, label %32, !llvm.loop !7

46:                                               ; preds = %1, %29
  %47 = phi i32 [ %31, %29 ], [ 4, %1 ]
  ret i32 %47
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_POSSIBLE_WAYS_TO_CONSTRUCT_BUILDINGS_processed.cpp() #4 section ".text.startup" {
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
